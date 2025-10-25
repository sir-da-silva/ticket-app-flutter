import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class LoginRequired extends StatelessWidget {
  final IconData icon;
  final String title;
  final String message;
  final String routeOrigin;

  const LoginRequired({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
    required this.routeOrigin,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(20, 0, 20, 0),
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
                  onPressed: () => Navigator.pushNamed(
                    context,
                    RouteNames.login,
                    arguments: {"routeOrigin": routeOrigin},
                  ),
                  child: Text("Se Connecter"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    RouteNames.register,
                    arguments: {"routeOrigin": routeOrigin},
                  ),
                  child: Text("Créer un compte"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
