import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutter_app/components/login_required.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with TickerProviderStateMixin {
  List<SlidableController> controllers = [];

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        actionsPadding: const EdgeInsets.only(right: 16),
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
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    if (controllers.length <= index) {
                      controllers.add(SlidableController(this));
                    }

                    return Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainer,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.only(bottom: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Slidable(
                          enabled: false,
                          closeOnScroll: true,
                          controller: controllers[index],
                          endActionPane: ActionPane(
                            motion: const StretchMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (_) {},
                                backgroundColor: Colors.green.withValues(alpha: 0.05),
                                foregroundColor: Colors.green,
                                icon: FontAwesomeIcons.check,
                                label: 'Vu',
                                padding: EdgeInsets.all(0),
                              ),
                              SlidableAction(
                                onPressed: (_) {},
                                backgroundColor: Colors.red.withValues(alpha: 0.05),
                                foregroundColor: Colors.red,
                                icon: FontAwesomeIcons.trash,
                                label: 'Supprimer',
                                padding: EdgeInsets.all(0),
                              ),
                            ],
                          ),
                          child: ListTile(
                            isThreeLine: true,
                            visualDensity: VisualDensity.compact,
                            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
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
                            subtitle: Text("This is the detail of notification 1."),
                            onLongPress: () {
                              controllers[index].openEndActionPane();
                            },
                            onTap: () {
                              controllers[index].close();
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
