import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';
import 'package:provider/provider.dart';

class Event extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String location;
  final String picture;
  final CustomDateParser date;

  final bool disabled;

  Event(Query$GetEvent$event data, {super.key, this.disabled = false})
    : id = data.id,
      title = data.title,
      description = data.description,
      location = data.location,
      picture = data.picture,
      date = CustomDateParser(date: data.date);

  Event.fromMyEvent(Query$GetMyEvents$myEvents data, {super.key, this.disabled = false})
    : id = data.id,
      title = data.title,
      description = data.description,
      location = data.location,
      picture = data.picture,
      date = CustomDateParser(date: data.date);

  Event.fromFollowedEvents(
    Query$GetFollowedEvents$followedEvents data, {
    super.key,
    this.disabled = false,
  }) : id = data.id,
       title = data.title,
       description = data.description,
       location = data.location,
       picture = data.picture,
       date = CustomDateParser(date: data.date);

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    void followEvent() {
      if (!auth.isAuthenticated) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Vous devez être connecté pour suivre des évenements."),
            behavior: SnackBarBehavior.floating,
            dismissDirection: DismissDirection.horizontal,
            action: SnackBarAction(
              label: 'Connexion',
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.login);
              },
            ),
          ),
        );
      } else {
        // TODO: Follow event
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Suivre'), behavior: SnackBarBehavior.floating),
        );
      }
    }

    void shareEvent() {
      // TODO: Share event
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Partager'), behavior: SnackBarBehavior.floating),
      );
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          if (!disabled) Navigator.pushNamed(context, RouteNames.eventDetail, arguments: id);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Picture with date and time overlays
            Expanded(
              child: Stack(
                children: [
                  Image.network(
                    picture,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Icon(
                          Icons.image,
                          color: Colors.grey.withValues(alpha: 0.25),
                          size: 42,
                        ),
                      );
                    },
                  ),
                  // Date overlay
                  Positioned(
                    left: 16,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Theme.of(
                          context,
                        ).colorScheme.primaryFixedDim.withValues(alpha: 0.85),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: 0.5),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.fromLTRB(10, 8, 10, 8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              size: 24,
                              color: Theme.of(context).colorScheme.onPrimaryFixed,
                            ),
                            Text(
                              date.monthDayNumber,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimaryFixed,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              date.monthNameShort.toUpperCase(),
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimaryFixed,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Time overlay
                  Positioned(
                    right: 16,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Theme.of(
                          context,
                        ).colorScheme.primaryFixedDim.withValues(alpha: 0.85),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: 0.5),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.fromLTRB(10, 8, 10, 8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              size: 24,
                              color: Theme.of(context).colorScheme.onPrimaryFixed,
                            ),
                            Text(
                              "${date.hour12}:${date.minute}",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              date.meridiem,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Action buttons overlay
                  Positioned(
                    bottom: 8,
                    right: 16,

                    child: Row(
                      spacing: 8,
                      children: [
                        // Follow button
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              // color: Colors.black.withValues(alpha: 0.6),
                              color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.9),
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withValues(alpha: 0.25),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.notifications_on_outlined),
                              iconSize: 20,
                              onPressed: followEvent,
                            ),
                          ),
                        ),

                        // Share button
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              // color: Colors.black.withValues(alpha: 0.6),
                              color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.9),
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withValues(alpha: 0.25),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.share),
                              iconSize: 20,
                              onPressed: shareEvent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // spacing: 8,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondaryFixed,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                          child: Icon(
                            Icons.location_on_rounded,
                            size: 14,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          // child: Text(icon, style: TextStyle(fontSize: 12)),
                        ),
                      ),

                      Expanded(
                        child: Text(
                          location,
                          style: TextStyle(fontSize: 16, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
