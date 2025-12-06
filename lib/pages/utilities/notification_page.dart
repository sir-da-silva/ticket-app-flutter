import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutter_app/components/login_required.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        actions: [
          if (auth.isAuthenticated)
            IconButton(
              onPressed: () {
                //
              },
              icon: Icon(FontAwesomeIcons.checkDouble, size: 20),
              tooltip: 'Marquer toutes comme lues',
            ),
          if (auth.isAuthenticated)
            IconButton(
              onPressed: () {
                //
              },
              icon: Icon(FontAwesomeIcons.trashCan, size: 20),
              tooltip: 'Supprimer toutes les notifications',
            ),
        ],
      ),

      body: !auth.isAuthenticated
          ? LoginRequired(
              icon: Icons.notifications,
              title: "Notifications",
              message:
                  "Recevez des notifications sur sur les activités de votre compte, des rapels sur vos évenements, ...",
            )
          : SlidableAutoCloseBehavior(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerLow,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.only(bottom: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Slidable(
                          startActionPane: ActionPane(
                            motion: const DrawerMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (_) {},
                                backgroundColor: Colors.green.withValues(alpha: 0.05),
                                foregroundColor: Colors.green,
                                icon: Icons.check,
                                label: 'Vu',
                              ),
                            ],
                          ),
                          endActionPane: ActionPane(
                            motion: const StretchMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (_) {},
                                backgroundColor: Colors.red.withValues(alpha: 0.05),
                                foregroundColor: Colors.red,
                                icon: Icons.delete,
                                label: 'Supprimer',
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 20,
                              child: Icon(
                                Icons.calendar_month_outlined,
                                color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                size: 20,
                              ),
                            ),
                            trailing: Text(
                              "Il y a 2h",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                              ),
                            ),

                            title: Text("Notification 1"),
                            isThreeLine: true,
                            visualDensity: VisualDensity.compact,
                            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            subtitle: Text("This is the detail of notification 1."),
                            onTap: () {
                              //
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
    );
  }
}
