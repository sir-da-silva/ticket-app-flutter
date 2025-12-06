import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:my_first_flutter_app/components/event.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/pages/utilities/select_payment_method.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:provider/provider.dart';

class CreateTicketPage extends StatefulWidget {
  final String eventId;

  const CreateTicketPage({super.key, required this.eventId});

  @override
  State<CreateTicketPage> createState() => _TicketPurchasePageState();
}

class _TicketPurchasePageState extends State<CreateTicketPage> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Acheter un billet d'entrée"), elevation: 0),
      body: Query$GetEvent$Widget(
        options: Options$Query$GetEvent(
          variables: Variables$Query$GetEvent(id: widget.eventId),
          onError: (error) {
            GraphQLService.operationExceptionHandler(context, error);
          },
        ),
        builder: (result, {refetch, fetchMore}) {
          Query$GetEvent? data;

          if (result.data != null) {
            data = Query$GetEvent.fromJson(result.data!);
          }

          return result.isLoading
              ? Center(child: CircularProgressIndicator())
              : data?.event == null
              ? Center(
                  child: Text(
                    "Erreur lors de la récuperation \n des données. Glissez vers les bas \n pour réactualiser.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                )
              : Mutation$BuyTicket$Widget(
                  options: WidgetOptions$Mutation$BuyTicket(
                    onCompleted: (result, data) async {
                      if (data != null) {
                        Mutation$BuyTicket$buyTicket _data = data.buyTicket;

                        if (_data.isInternalPayment && _data.ticket != null) {
                          Navigator.pushReplacementNamed(
                            context,
                            RouteNames.ticketDetail,
                            arguments: _data.ticket!.id,
                          );
                        } else if (_data.isExternalPayment && _data.stripeClientSecret != null) {
                          await Stripe.instance.initPaymentSheet(
                            paymentSheetParameters: SetupPaymentSheetParameters(
                              paymentIntentClientSecret: _data.stripeClientSecret,
                              merchantDisplayName: "Mon App",
                            ),
                          );

                          await Stripe.instance.presentPaymentSheet();
                        } else if (_data.isExternalPayment && _data.paymentUri != null) {
                          Navigator.pushNamed(
                            context,
                            RouteNames.webView,
                            arguments: _data.paymentUri!.replaceFirst("http://", "https://"),
                          );
                        }
                      }
                    },
                    onError: (error) {
                      GraphQLService.operationExceptionHandler(context, error);
                    },
                  ),
                  builder: (runMutation, result) {
                    return SingleChildScrollView(
                      padding: EdgeInsets.all(16),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 250, child: Event(data!.event!, disabled: true)),
                            const SizedBox(height: 25),

                            // Formulaire d’achat
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 8,
                              children: [
                                const Text(
                                  'Prix du billet',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                ),

                                Expanded(child: SizedBox()),

                                ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.confirmation_number),
                                  label: Text("${data.event!.price} ${data.event!.priceCurrency}"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(
                                      context,
                                    ).colorScheme.primaryFixed.withValues(alpha: 0.5),
                                    foregroundColor: Theme.of(context).colorScheme.primary,
                                    shadowColor: Colors.transparent,
                                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 14),
                                    iconSize: 22,
                                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),

                            Divider(height: 30),

                            const SizedBox(height: 10),

                            Text(
                              'Béneficiaire ${auth.isAuthenticated ? "" : "*"}',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10),

                            _buildInput(
                              _nameController,
                              TextInputType.name,
                              'Nom complet ${auth.isAuthenticated ? "" : "*"}',
                              "Nom du béneficiaire",
                              Icons.person,
                              (value) {
                                if (!auth.isAuthenticated && value!.isEmpty) {
                                  return "Vous devez remplir ce champ !";
                                }
                                // TODO: add more validators
                                return null;
                              },
                            ),
                            const SizedBox(height: 12),
                            _buildInput(
                              _phoneController,
                              TextInputType.phone,
                              'Téléphone',
                              "Telephone de contact",
                              Icons.phone,
                              (value) {
                                if (!auth.isAuthenticated && value!.isEmpty) {
                                  return "Vous devez remplir ce champ !";
                                }
                                // TODO: add more validators
                                return null;
                              },
                            ),
                            const SizedBox(height: 12),
                            _buildInput(
                              _emailController,
                              TextInputType.emailAddress,
                              'Email',
                              "Email de contact",
                              Icons.email,
                              (value) {
                                if (value!.isNotEmpty) {
                                  return "Email incorecte !";
                                }
                                // TODO: add more validators
                                return null;
                              },
                            ),

                            const SizedBox(height: 30),

                            // Bouton d’achat
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(context).colorScheme.onPrimaryFixed,
                                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: result!.isNotLoading
                                    ? () {
                                        if (_formKey.currentState!.validate()) {
                                          selectPaymentMethod(context, (method) {
                                            runMutation(
                                              Variables$Mutation$BuyTicket(
                                                input: Input$BuyTicketInput(
                                                  paymentMethod: method,
                                                  eventId: data!.event!.id,
                                                  buyerName: _nameController.text,
                                                  buyerEmail: _emailController.text,
                                                  buyerPhone: _phoneController.text,
                                                ),
                                              ),
                                            );
                                          });
                                        }
                                      }
                                    : null,
                                child: result.isNotLoading
                                    ? Text(
                                        'Acheter maintenant',
                                        style: TextStyle(fontSize: 16, color: Colors.white),
                                      )
                                    : SizedBox(
                                        height: 16,
                                        width: 16,
                                        child: CircularProgressIndicator(),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }

  Widget _buildInput(
    TextEditingController controller,
    TextInputType keyboardType,
    String label,
    String hint,
    IconData icon,
    FormFieldValidator<String> validator,
  ) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Theme.of(context).colorScheme.primary),
        labelText: label,
        hintText: hint,
        // filled: true,
        // fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
      ),
      validator: validator,
    );
  }
}
