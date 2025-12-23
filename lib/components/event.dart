import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_first_flutter_app/components/follow_event_widget.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';
import 'package:custom_clippers/custom_clippers.dart';

class Event extends HookWidget {
  final String id;
  final String title;
  final String description;
  final String location;
  final String picture;
  final CustomDateParser date;
  final List<Object>? followers;

  Event(Query$GetEvent$event data, {super.key})
    : id = data.id,
      title = data.title,
      description = data.description,
      location = data.location,
      picture = data.picture,
      date = CustomDateParser(date: data.date),
      followers = data.followers;

  Event.fromMyEvent(Query$GetMyEvents$myEvents data, {super.key})
    : id = data.id,
      title = data.title,
      description = data.description,
      location = data.location,
      picture = data.picture,
      date = CustomDateParser(date: data.date),
      followers = data.followers;

  Event.fromFollowedEvents(Query$GetFollowedEvents$followedEvents data, {super.key})
    : id = data.id,
      title = data.title,
      description = data.description,
      location = data.location,
      picture = data.picture,
      date = CustomDateParser(date: data.date),
      followers = data.followers;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteNames.eventDetail, arguments: id);
        },
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
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
                        padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
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
                        padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
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

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: DirectionalWaveClipper(
                        verticalPosition: VerticalPosition.top,
                        horizontalPosition: HorizontalPosition.left,
                      ),
                      child: Container(
                        height: 32,
                        color: Theme.of(
                          context,
                        ).colorScheme.surfaceContainerLow.withValues(alpha: 0.75),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: SinCosineWaveClipper(
                        verticalPosition: VerticalPosition.top,
                        horizontalPosition: HorizontalPosition.right,
                      ),
                      child: Container(
                        height: 50,
                        color: Theme.of(context).colorScheme.surfaceContainerLow,
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
                        // Share button
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surfaceContainer,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.25),
                                  blurRadius: 4,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: customFollowEventWidget(
                              context,
                              eventId: id,
                              builder: (follow, isFollowed) => IconButton(
                                icon: isFollowed ?? followers?.isNotEmpty ?? false
                                    ? const Icon(Icons.notifications_on)
                                    : const Icon(Icons.notifications_outlined),
                                color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                iconSize: 20,
                                onPressed: follow,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surfaceContainer,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.25),
                                  blurRadius: 4,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.share),
                              color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                              iconSize: 20,
                              onPressed: () {
                                //
                              },
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
