import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/user.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';

class OtpPage extends StatefulWidget {
  final String? email;

  const OtpPage({super.key, this.email});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> otpControllers = List.generate(
    6,
    (_) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// 🎨 Fond dégradé
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).colorScheme.primaryFixed,
                  Theme.of(context).colorScheme.primaryFixedDim,
                  Theme.of(context).colorScheme.primary,
                ],
              ),
            ),
          ),

          /// 🌀 Vague blanche décorative
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: ClipPath(
          //     clipper: WaveClipper(),
          //     child: Container(height: 250, color: Colors.white),
          //   ),
          // ),

          /// 🧊 Contenu principal
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Mutation$CompleteSignUp$Widget(
                builder: (runMutation, result) {
                  return Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 12,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Vérification du code",
                            style: GoogleFonts.poppins(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF333333),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Entrez le code que nous avons envoyé à votre adresse e-mail.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[700]),
                          ),
                          const SizedBox(height: 30),

                          /// 🔢 Champs OTP
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(6, (index) {
                              return SizedBox(
                                width: 40,
                                height: 60,
                                child: TextFormField(
                                  controller: otpControllers[index],
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  autofocus: true,
                                  onChanged: (value) {
                                    if (value.isNotEmpty && index < 6) {
                                      FocusScope.of(context).nextFocus();
                                    } else if (value.isEmpty && index > 0) {
                                      FocusScope.of(context).previousFocus();
                                    }
                                  },
                                  decoration: InputDecoration(contentPadding: EdgeInsets.all(0)),
                                ),
                              );
                            }),
                          ),
                          const SizedBox(height: 40),

                          /// 🔘 Bouton Vérifier
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                backgroundColor: Theme.of(context).colorScheme.primary,
                                foregroundColor: Theme.of(context).colorScheme.surface,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              onPressed: () {
                                final otpCode = otpControllers.map((c) => c.text).join();

                                if (widget.email != null) {
                                  if (otpCode.length == 6) {
                                    runMutation(
                                      Variables$Mutation$CompleteSignUp(
                                        input: Input$CompleteSignUpInput(
                                          email: widget.email!,
                                          code: otpCode,
                                        ),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text("Veuillez entrer le code complet."),
                                        dismissDirection: DismissDirection.horizontal,
                                        behavior: SnackBarBehavior.floating,
                                      ),
                                    );
                                  }
                                }
                              },
                              child: (result?.isLoading ?? false)
                                  ? SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: CircularProgressIndicator(
                                        color: Theme.of(context).colorScheme.surface,
                                      ),
                                    )
                                  : Text("Vérifier le code"),
                            ),
                          ),
                          const SizedBox(height: 20),

                          /// 🔁 Renvoi du code
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Vous n'avez pas reçu de code ? ",
                                style: GoogleFonts.poppins(fontSize: 13),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // TODO : renvoyer le code OTP
                                },
                                child: Text(
                                  "Renvoyer",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context).colorScheme.onPrimaryFixed,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          IntrinsicWidth(
                            child: IconButton(
                              icon: Row(
                                spacing: 10,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_back_rounded),
                                  Text("Revenir en arrière", style: TextStyle(fontSize: 14)),
                                ],
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 🎨 Vague blanche comme sur les autres pages
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(size.width / 2, size.height + 30, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
