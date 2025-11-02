import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/login_required.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(title: Text("Notifications")),
      body: !auth.isAuthenticated
          ? LoginRequired(
              icon: Icons.notifications,
              title: "Notifications",
              message:
                  "Recevez des notifications sur sur les activités de votre compte, des rapels sur vos évenements, ...",
            )
          : ListView(
              children: [
                Text("Single Notification"),
                Text("Single Notification"),
                Text("Single Notification"),
                Text("Single Notification"),
                Text("Single Notification"),
                Text("Single Notification"),
              ],
            ),
    );
  }
}
