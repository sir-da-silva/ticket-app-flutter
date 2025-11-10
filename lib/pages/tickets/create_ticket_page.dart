import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/event.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
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

  String _paymentMethod = 'Carte bancaire';

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
              : data == null
              ? Center(
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Erreur lors de la recuperation \n des donnees",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              refetch!();
                            },
                            child: Row(
                              spacing: 10,
                              children: [Icon(Icons.refresh), Text("Reessayer")],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : Mutation$CreateTicket$Widget(
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
                            const Text(
                              'Informations d\'achat',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10),

                            _buildInput(
                              _nameController,
                              TextInputType.name,
                              'Nom complet',
                              "Nom du béneficiaire",
                              Icons.person,
                            ),
                            const SizedBox(height: 12),
                            _buildInput(
                              _phoneController,
                              TextInputType.phone,
                              'Téléphone',
                              "Telephone de contact",
                              Icons.phone,
                            ),
                            const SizedBox(height: 12),
                            _buildInput(
                              _emailController,
                              TextInputType.emailAddress,
                              'Email',
                              "Email de contact",
                              Icons.email,
                            ),
                            const SizedBox(height: 25),

                            // Méthode de paiement
                            const Text(
                              'Méthode de paiement',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 10),

                            _buildPaymentOption(
                              context,
                              'moncash',
                              "MonCash",
                              "assets/images/moncash_logo.png",
                            ),
                            _buildPaymentOption(
                              context,
                              'card',
                              "Card",
                              "assets/images/visa_mastercard_logo.webp",
                            ),
                            _buildPaymentOption(
                              context,
                              'paypal',
                              "PayPal",
                              "assets/images/paypal_logo.png",
                            ),
                            _buildPaymentOption(
                              context,
                              'cash_app',
                              "Cash App",
                              "assets/images/cash_app_logo.png",
                            ),

                            const SizedBox(height: 30),

                            if (!auth.isAuthenticated || true)
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: Colors.deepOrange),
                                  children: [
                                    WidgetSpan(child: Icon(Icons.info_outline, size: 15)),
                                    TextSpan(
                                      text:
                                          " Vous n'etes connecté à aucun compte, les tickets que vous achetez seront enregistrés localement. Vous risquez de perdre les données si vous desinstallez l'application. Pensez à prendre une capture d'écran après l'achat. Merci.",
                                    ),
                                  ],
                                ),
                              ),
                            const SizedBox(height: 30),

                            // Bouton d’achat
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(context).colorScheme.primary,
                                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Achat en cours...')),
                                    );
                                  }
                                },
                                child: const Text(
                                  'Acheter maintenant',
                                  style: TextStyle(fontSize: 16, color: Colors.white),
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
  ) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Theme.of(context).colorScheme.primary),
        labelText: label,
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }

  Widget _buildPaymentOption(BuildContext context, String value, String title, String imagePath) {
    return RadioGroup(
      groupValue: _paymentMethod,
      onChanged: (value) => setState(() => _paymentMethod = value!),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        borderOnForeground: true,
        child: RadioListTile<String>(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          value: value,
          activeColor: Theme.of(context).colorScheme.primary,
          title: Text(title, ),
          secondary: SizedBox(height: 42, child: Image.asset(imagePath, fit: BoxFit.contain)),
        ),
      ),
    );
  }
}
