import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/user.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:my_first_flutter_app/services/string_validators.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

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

          /// 🧊 Conteneur principal du formulaire
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Container(
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
                child: Mutation$InitSignUp$Widget(
                  options: WidgetOptions$Mutation$InitSignUp(
                    onCompleted: (_, data) {
                      if (data?.initSignUp != null) {
                        Navigator.pushNamed(
                          context,
                          RouteNames.otpPage,
                          arguments: data!.initSignUp,
                        );
                      }
                    },
                    onError: (error) {
                      GraphQLService.operationExceptionHandler(context, error);
                    },
                  ),
                  builder: (runMutation, result) {
                    return Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Créer un compte",
                            style: GoogleFonts.poppins(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.onPrimaryFixed,
                            ),
                          ),
                          const SizedBox(height: 24),

                          /// 🧑 Nom complet
                          TextFormField(
                            keyboardType: TextInputType.name,
                            controller: nameController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person_outline),
                              hintText: "Nom complet",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Entrez votre nom complet";
                              }
                              if (isName(value) == false) {
                                return "Nom invalide";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 18),

                          /// ✉️ Email
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email_outlined),
                              hintText: "Adresse email",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Entrez votre email";
                              }
                              if (isEmail(value) == false) {
                                return "Email invalide";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 18),

                          /// 🔒 Mot de passe
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            controller: passwordController,
                            obscureText: obscurePassword,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock_outline),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  obscurePassword ? Icons.visibility_off : Icons.visibility,
                                ),
                                onPressed: () => setState(() => obscurePassword = !obscurePassword),
                              ),
                              hintText: "Mot de passe",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Entrez votre mot de passe";
                              }
                              if (isValidPassword(value) == false) {
                                return "Mot de passe trop court";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 18),

                          /// 🔒 Confirmation mot de passe
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            controller: confirmPasswordController,
                            obscureText: obscureConfirmPassword,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock_outline),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  obscureConfirmPassword ? Icons.visibility_off : Icons.visibility,
                                ),
                                onPressed: () => setState(
                                  () => obscureConfirmPassword = !obscureConfirmPassword,
                                ),
                              ),
                              hintText: "Confirmer le mot de passe",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Confirmez votre mot de passe";
                              } else if (value != passwordController.text) {
                                return "Les mots de passe ne correspondent pas";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 24),

                          /// 🧩 Bouton d’inscription
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  if (result?.isNotLoading ?? false) {
                                    runMutation(
                                      Variables$Mutation$InitSignUp(
                                        input: Input$InitSignUpInput(
                                          name: nameController.text,
                                          email: emailController.text,
                                          password: passwordController.text,
                                        ),
                                      ),
                                    );
                                  }
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                backgroundColor: Theme.of(context).colorScheme.primary,
                                foregroundColor: Theme.of(context).colorScheme.surface,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: (result?.isLoading ?? false)
                                  ? SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: CircularProgressIndicator(
                                        color: Theme.of(context).colorScheme.surface,
                                      ),
                                    )
                                  : Text("S'inscrire"),
                            ),
                          ),
                          const SizedBox(height: 24),

                          /// 🚪 Séparateur et bouton Google
                          Row(
                            children: const [
                              Expanded(child: Divider()),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Text("OU"),
                              ),
                              Expanded(child: Divider()),
                            ],
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton.icon(
                              icon: const Icon(FontAwesomeIcons.google, size: 20),
                              label: const Text("Continuer avec Google"),
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                side: BorderSide(
                                  width: 1,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              onPressed: () {
                                // TODO : Connexion Google
                              },
                            ),
                          ),
                          const SizedBox(height: 24),

                          /// 🔁 Lien vers la page de connexion
                          RichText(
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: "Vous avez déjà un compte ? ",
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Theme.of(context).colorScheme.onPrimaryFixed,
                              ),
                              children: [
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacementNamed(context, RouteNames.login);
                                    },
                                    child: Text(
                                      "Se connecter",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context).colorScheme.onPrimaryFixed,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                                  Text("Annuler", style: TextStyle(fontSize: 14)),
                                ],
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 🎨 Reutilisation du même clipper que dans login
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
