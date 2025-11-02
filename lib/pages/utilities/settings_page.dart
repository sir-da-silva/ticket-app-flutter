import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:my_first_flutter_app/services/jwt_service.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(title: Text("Paramètres")),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 8),
        child: !auth.isAuthenticated
            ? Column(
                children: [
                  Text("Unauthenticated Setting"),
                  Text("Unauthenticated Setting"),
                  Text("Unauthenticated Setting"),
                  Text("Unauthenticated Setting"),
                  Text("Unauthenticated Setting"),
                  Text("Unauthenticated Setting"),
                ],
              )
            : Column(
                children: [
                  SelectableText(
                    "Dexonnexion",
                    textAlign: TextAlign.center,
                    onTap: () {
                      JWTService.removeToken();
                      GraphQLService.refreshClient();
                      auth.refreshSession();
                    },
                  ),
                  Text("Authenticated Setting"),
                  Text("Authenticated Setting"),
                  Text("Authenticated Setting"),
                  Text("Authenticated Setting"),
                  Text("Authenticated Setting"),
                  Text("Authenticated Setting"),
                ],
              ),
      ),
    );
  }
}
