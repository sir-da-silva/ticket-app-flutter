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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            spacing: 16,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Parametre 1", style: TextStyle(fontSize: 18)),
                  Switch(
                    value: true,
                    onChanged: (value) {
                      //
                    },
                  ),
                ],
              ),
              if (auth.isAuthenticated)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    label: Text("Dexonnexion"),
                    onPressed: () {
                      JWTService.removeToken();
                      GraphQLService.refreshClient();
                      auth.refreshSession();
                    },
                    icon: Icon(Icons.logout),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
