import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/navigation/app_router.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class LoginRequired extends StatelessWidget {
  final IconData icon;
  final String title;
  final String message;

  const LoginRequired({super.key, required this.icon, required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              message,
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: null,
                  child: Row(
                    spacing: 12,
                    children: [
                      //
                      InkWell(
                        onTap: () {
                          AppRouter.pushNamed(context, RouteNames.login);
                        },
                        child: Text(
                          "Se connecter",
                          style: TextStyle(color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                      Text("|"),
                      InkWell(
                        onTap: () {
                          AppRouter.pushNamed(context, RouteNames.register);
                        },
                        child: Text(
                          "Créer un compte",
                          style: TextStyle(color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                    ],
                  ),
                ),

                // ElevatedButton(
                //   onPressed: () => Navigator.pushNamed(context, RouteNames.login),
                //   child: Text("Se Connecter | Creer un compte"),
                // ),
                // ElevatedButton(
                //   onPressed: () => Navigator.pushNamed(context, RouteNames.register),
                //   child: Text("Créer un compte"),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
