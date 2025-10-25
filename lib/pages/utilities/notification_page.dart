import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_app/components/login_required.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  bool isAuthenticated() {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications")),
      body: !isAuthenticated()
          ? LoginRequired(
              icon: Icons.notifications,
              title: "Notifications",
              message:
                  "Recevez des notifications sur sur les activités de votre compte, des rapels sur vos évenements, ...",
              routeOrigin: RouteNames.notifications,
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
