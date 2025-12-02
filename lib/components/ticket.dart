import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';

class Ticket extends StatelessWidget {
  final String id;
  final bool checked;
  final String buyerName;
  final String eventTitle;
  final String eventLocation;
  final String eventPicture;
  final CustomDateParser date;

  Ticket.fromtMyTickets(Query$GetMyTickets$myTickets data, {super.key})
    : id = data.id,
      buyerName = data.buyerName!,
      checked = data.used,
      eventTitle = data.event.title,
      eventLocation = data.event.location,
      eventPicture = data.event.picture,
      date = CustomDateParser(date: data.event.date);

  // Duration? get _timeDiff {
  //   if (eventDateTime == null) return null;
  //   return eventDateTime!.difference(DateTime.now());
  // }

  String _formatCountdown(Duration d) {
    final bool isPast = d.isNegative;
    final Duration abs = d.abs();
    final int days = abs.inDays;
    final int hours = abs.inHours % 24;
    final int minutes = abs.inMinutes % 60;
    final String formatted = '${days}j ${hours}h ${minutes}m';
    return isPast ? '+ $formatted' : '- $formatted';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteNames.ticketDetail, arguments: id);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.blue.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.network(
                          eventPicture,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.image,
                              size: 18,
                              color: Colors.grey.withValues(alpha: 0.5),
                            );
                          },
                        ),
                      ),
                      const Spacer(),

                      // Used badge
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blue.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Dans 23 jours",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  Text(
                    eventTitle,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  Row(
                    spacing: 8,
                    children: [Icon(Icons.location_city, size: 18), Text(eventLocation)],
                  ),

                  const SizedBox(height: 12),

                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(text: "Beneficiaire : \n"),
                        TextSpan(
                          text: buyerName,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(children: [
                    Text("Plus de detail")
                  ],)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
