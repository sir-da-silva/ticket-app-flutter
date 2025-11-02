import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

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
          /// 🎨 Fond dégradé violet / bleu
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
              ),
            ),
          ),

          /// 🌀 Vague blanche décorative
          Align(
            alignment: Alignment.topCenter,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(height: 250, color: Colors.white),
            ),
          ),

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
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Créer un compte",
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF333333),
                        ),
                      ),
                      const SizedBox(height: 24),

                      /// 🧑 Nom complet
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: "Nom complet",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        validator: (value) =>
                            value == null || value.isEmpty ? "Entrez votre nom complet" : null,
                      ),
                      const SizedBox(height: 18),

                      /// ✉️ Email
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          hintText: "Adresse email",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        validator: (value) =>
                            value == null || value.isEmpty ? "Entrez votre email" : null,
                      ),
                      const SizedBox(height: 18),

                      /// 🔒 Mot de passe
                      TextFormField(
                        controller: passwordController,
                        obscureText: obscurePassword,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(obscurePassword ? Icons.visibility_off : Icons.visibility),
                            onPressed: () => setState(() => obscurePassword = !obscurePassword),
                          ),
                          hintText: "Mot de passe",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        validator: (value) => value == null || value.length < 6
                            ? "Mot de passe ≥ 6 caractères"
                            : null,
                      ),
                      const SizedBox(height: 18),

                      /// 🔒 Confirmation mot de passe
                      TextFormField(
                        controller: confirmPasswordController,
                        obscureText: obscureConfirmPassword,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(
                              obscureConfirmPassword ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () =>
                                setState(() => obscureConfirmPassword = !obscureConfirmPassword),
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
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              RouteNames.optPage,
                              arguments: {'email': emailController.text},
                            );
                            if (_formKey.currentState!.validate()) {
                              // TODO : logique d’inscription
                            }
                          },
                          child: const Text("S'inscrire"),
                        ),
                      ),
                      const SizedBox(height: 24),

                      /// 🚪 Séparateur et bouton Google
                      Row(
                        children: const [
                          Expanded(child: Divider()),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 12), child: Text("OU")),
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
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            side: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                          onPressed: () {
                            // TODO : Connexion Google
                          },
                        ),
                      ),
                      const SizedBox(height: 24),

                      /// 🔁 Lien vers la page de connexion
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Déjà un compte ? "),
                          GestureDetector(
                            onTap: () => Navigator.pushReplacementNamed(context, RouteNames.login),
                            child: Text(
                              "Se connecter",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF667EEA),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      IconButton(
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
                    ],
                  ),
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
