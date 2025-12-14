import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class Status {
  String description;
  Color color;

  Status(this.description, this.color);
}

class Ticket extends StatelessWidget {
  final String id;
  final bool checked;
  final String buyerName;
  final String eventTitle;
  final String eventLocation;
  final String eventPicture;
  final DateTime date;

  Ticket.fromtMyTickets(Query$GetMyTickets$myTickets data, {super.key})
    : id = data.id,
      buyerName = data.buyerName!,
      checked = data.used,
      eventTitle = data.event.title,
      eventLocation = data.event.location,
      eventPicture = data.event.picture,
      date = data.event.date;

  Status _getStatus() {
    final diff = date.difference(DateTime.now());

    String plural(int value) {
      return value > 1 ? 's' : '';
    }

    if (!diff.isNegative) {
      final days = diff.inDays;
      final hours = diff.inHours;
      final minutes = diff.inMinutes;

      if (days > 0) {
        return Status("Dans $days  jour${plural(days)}", Colors.blue);
      } else if (hours > 0) {
        return Status("Dans $hours heure${plural(hours)}", Colors.blue);
      } else if (minutes > 29) {
        return Status("Dans $minutes minute${plural(minutes)}", Colors.blue);
      } else {
        return Status("Preparez vous !", Colors.blueAccent);
      }
    } else {
      final days = diff.inDays.abs();
      final hours = diff.inHours.abs();
      final minutes = diff.inMinutes.abs();

      if (minutes < 15 && !checked) {
        return Status("Commence déjà", Colors.blueAccent);
      } else if (minutes < 15 && checked) {
        return Status("Vous y êtes", Colors.green);
      } else if (minutes < 30 && checked) {
        return Status("Amusez vous bien !", Colors.green);
      } else if (minutes < 60) {
        return Status("Il y a $minutes minute${plural(minutes)}", Colors.orange);
      } else if (hours < 24) {
        return Status("Il y a $hours heure${plural(hours)}", Colors.orange);
      } else if (days < 7) {
        return Status("Il y a $days jour${plural(days)}", Colors.orange);
      } else if (days < 30) {
        final weeks = (days / 7).round();
        return Status("Il y a $weeks semaine${plural(weeks)}", Colors.orange);
      } else if (days < 365) {
        final months = (days / 30).round();
        return Status("Il y a $months moi${plural(months)}", Colors.orange);
      } else {
        final years = (days / 365).round();
        return Status("Il y a $years année${plural(years)}", Colors.orange);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final status = _getStatus();

    return ClipPath(
      clipper: MultipleRoundedPointsClipper(Sides.horizontal, heightOfPoint: 10),
      child: ClipPath(
        clipper: TicketPassClipper(position: 100, holeRadius: 32),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.primary,
          ),
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, RouteNames.ticketDetail, arguments: id);
            },
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
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
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                eventPicture,
                                errorBuilder: (context, error, stackTrace) {
                                  return Icon(
                                    Icons.image,
                                    size: 18,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.surface.withValues(alpha: 0.9),
                                  );
                                },
                              ),
                            ),
                          ),
                          const Spacer(),

                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.9),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              status.description,
                              style: TextStyle(
                                fontSize: 12,
                                color: status.color,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),

                      Text(
                        eventTitle,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),

                      Row(
                        spacing: 8,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                              child: Icon(
                                Icons.location_on_rounded,
                                size: 14,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              eventLocation,
                              style: TextStyle(
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis,
                                color: Theme.of(context).colorScheme.surface,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        spacing: 8,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                              child: Icon(
                                Icons.badge,
                                size: 14,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              buyerName,
                              style: TextStyle(
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis,
                                color: Theme.of(context).colorScheme.surface,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 5),
                      Center(
                        child: Text(
                          "Plus de detail",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primaryFixedDim,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
