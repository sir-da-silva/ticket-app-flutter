import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/user.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:provider/provider.dart';

Future<void> selectPaymentMethod(
  BuildContext context,
  void Function(Enum$PaymentMethod paymentMethod) callback,
) async {
  await showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return FractionallySizedBox(
        //
        heightFactor: 0.6,
        child: _SelectPaymentMethodModal(callback: callback),
      );
    },
  );
}

class _SelectPaymentMethodModal extends StatefulWidget {
  final void Function(Enum$PaymentMethod paymentMethod) callback;

  const _SelectPaymentMethodModal({required this.callback});

  @override
  State<_SelectPaymentMethodModal> createState() => __SelectPaymentMethodModalState();
}

class __SelectPaymentMethodModalState extends State<_SelectPaymentMethodModal> {
  Enum$PaymentMethod? _paymentMethod;

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("Methode de paiement", maxLines: 2, style: TextStyle(fontSize: 20)),
        titleSpacing: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (auth.isAuthenticated)
                _buildPaymentOption(
                  context,
                  Enum$PaymentMethod.INTERNAL,
                  "Internal Wallet",
                  Icon(Icons.account_balance_wallet, size: 42),
                ),
              _buildPaymentOption(
                context,
                Enum$PaymentMethod.MONCASH,
                "MonCash",
                SizedBox(
                  height: 42,
                  child: Image.asset("assets/images/moncash_logo.png", fit: BoxFit.contain),
                ),
              ),
              _buildPaymentOption(
                context,
                Enum$PaymentMethod.CARD,
                "Card",
                Icon(Icons.credit_card_rounded, size: 42),
              ),
              _buildPaymentOption(
                context,
                Enum$PaymentMethod.PAYPAL,
                "PayPal",
                SizedBox(
                  height: 42,
                  child: Image.asset("assets/images/paypal_logo.png", fit: BoxFit.contain),
                ),
              ),
              _buildPaymentOption(
                context,
                Enum$PaymentMethod.CASHAPP,
                "Cash App",
                SizedBox(
                  height: 42,
                  child: Image.asset("assets/images/cash_app_logo.png", fit: BoxFit.contain),
                ),
              ),

              SizedBox(height: 100),

              // Bouton d’achat
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          onPressed: _paymentMethod != null
              ? () {
                  widget.callback(_paymentMethod!);
                  Navigator.pop(context);
                }
              : null,
          child: Text('Continuer', style: TextStyle(fontSize: 16, color: Colors.white)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildPaymentOption(
    BuildContext context,
    Enum$PaymentMethod value,
    String title,
    Widget secondary,
  ) {
    return RadioGroup(
      groupValue: _paymentMethod?.toJson(),
      onChanged: (value) => setState(() => _paymentMethod = Enum$PaymentMethod.fromJson(value!)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: _paymentMethod == value
              ? BoxBorder.all(color: Theme.of(context).colorScheme.primary, width: 1)
              : null,
          color: _paymentMethod == value ? Theme.of(context).colorScheme.onInverseSurface : null,
          borderRadius: BorderRadius.circular(14),
        ),
        child: value == Enum$PaymentMethod.INTERNAL
            ? Query$GetWalletBalance$Widget(
                builder: (result, {refetch, fetchMore}) {
                  Query$GetWalletBalance? data;

                  if (result.data != null) {
                    data = Query$GetWalletBalance.fromJson(result.data!);
                  }

                  return RadioListTile<String>(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    value: value.toJson(),
                    activeColor: Theme.of(context).colorScheme.primary,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
                        if (data?.me != null)
                          Text(
                            "${data!.me!.walletBalance.toString()} HTG",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                      ],
                    ),
                    secondary: secondary,
                  );
                },
              )
            : RadioListTile<String>(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                value: value.toJson(),
                activeColor: Theme.of(context).colorScheme.primary,
                title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
                secondary: secondary,
              ),
      ),
    );
  }
}
