import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';

class TicketDetailPage extends StatefulWidget {
  final String ticketId;

  const TicketDetailPage({super.key, required this.ticketId});

  @override
  State<TicketDetailPage> createState() => _TicketDetailPageState();
}

class _TicketDetailPageState extends State<TicketDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ticket"), elevation: 0),
      body: Query$GetTicket$Widget(
        options: Options$Query$GetTicket(
          variables: Variables$Query$GetTicket(id: widget.ticketId),
          onError: (error) {
            GraphQLService.operationExceptionHandler(context, error);
          },
        ),
        builder: (result, {refetch, fetchMore}) {
          Query$GetTicket? data;
          CustomDateParser? date;

          if (result.data != null) {
            data = Query$GetTicket.fromJson(result.data!);

            if (data.ticket?.event.date != null) {
              date = CustomDateParser(date: data.ticket!.event.date);
            }
          }

          Widget infoRow(IconData icon, String info) {
            return Row(
              spacing: 8,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryFixed,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    child: Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
                    // child: Text(icon, style: TextStyle(fontSize: 12)),
                  ),
                ),
                Text(info, style: TextStyle(fontSize: 16)),
              ],
            );
          }

          return result.isLoading
              ? Center(child: CircularProgressIndicator())
              : data?.ticket == null
              ? Center(
                  child: Text(
                    "Erreur lors de la récuperation \n des données. Glissez vers les bas \n pour réactualiser.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(child: AspectRatio(aspectRatio: 1)),

                        SizedBox(height: 12),
                        Text("Evénement", style: TextStyle(fontWeight: FontWeight.w600)),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RouteNames.eventDetail,
                              arguments: data!.ticket!.event.id,
                            );
                          },
                          child: Text(
                            data!.ticket!.event.title,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        infoRow(Icons.location_on, data.ticket!.event.location),
                        SizedBox(height: 10),
                        Row(
                          spacing: 8,
                          children: [
                            infoRow(
                              Icons.calendar_month,
                              // "📆",
                              "${date!.weekDayNameShort}. ${date.monthDayNumber} ${date.monthName}",
                            ),
                            Expanded(child: SizedBox()),
                            infoRow(
                              Icons.access_time_filled,
                              // "🕐",
                              "${date.hour12}:${date.minute} ${date.meridiem}",
                            ),
                          ],
                        ),

                        SizedBox(height: 20),
                        Text("Béneficiaire", style: TextStyle(fontWeight: FontWeight.w600)),
                        Text(
                          data.ticket!.buyerName!,
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        if (data.ticket!.buyerPhone != null && data.ticket!.buyerPhone!.isNotEmpty)
                          infoRow(Icons.phone, data.ticket!.buyerPhone!),
                        SizedBox(height: 8),
                        if (data.ticket!.buyerEmail != null && data.ticket!.buyerEmail!.isNotEmpty)
                          infoRow(Icons.mail, data.ticket!.buyerEmail!),

                        SizedBox(height: 25),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            label: Text("En acheter un autre", style: TextStyle(fontSize: 16)),
                            icon: Icon(Icons.plus_one, size: 24),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              foregroundColor: Theme.of(context).colorScheme.surface,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                RouteNames.createTicket,
                                arguments: data!.ticket!.event.id,
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            icon: Icon(Icons.download),
                            label: Text(
                              "Enregistrer sur le téléphone",
                              style: TextStyle(fontSize: 16),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              backgroundColor: Theme.of(context).colorScheme.onPrimaryFixed,
                              foregroundColor: Theme.of(context).colorScheme.surface,
                            ),
                            onPressed: () {
                              // TODO: Save ticket on the phone
                            },
                          ),
                        ),

                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
