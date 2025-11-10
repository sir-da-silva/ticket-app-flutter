import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';

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
            Expanded(
              child: Image.network(
                picture,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Icon(Icons.image, color: Colors.grey.withValues(alpha: 0.25), size: 42),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text(
                    '📅  ${date.monthDayNumber} ${date.monthName} • ${date.hour12}h${date.minute} ${date.meridiem}',
                  ),
                  Text('📍  $location'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
