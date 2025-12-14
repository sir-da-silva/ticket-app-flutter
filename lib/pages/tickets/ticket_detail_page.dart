import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';
import 'package:my_first_flutter_app/components/info_row.dart';

class TicketDetailPage extends StatelessWidget {
  final String ticketId;

  const TicketDetailPage({super.key, required this.ticketId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text("Ticket")),
      body: Query$GetTicket$Widget(
        options: Options$Query$GetTicket(
          variables: Variables$Query$GetTicket(id: ticketId),
          onError: (error) {
            GraphQLService.operationExceptionHandler(context, error);
          },
        ),
        builder: (result, {refetch, fetchMore}) {
          Query$GetTicket? data;
          CustomDateParser? date;
          bool canBuyTicket = false;

          if (result.data != null) {
            data = Query$GetTicket.fromJson(result.data!);

            if (data.ticket?.event.date != null) {
              date = CustomDateParser(date: data.ticket!.event.date);
              canBuyTicket = !(data.ticket!.event.date.difference(DateTime.now()).inHours < -12);
            }
          }

          return result.isLoading
              ? Center(child: CircularProgressIndicator())
              : data?.ticket == null
              ? Center(
                  child: Column(
                    spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 50,
                        color: Colors.grey.withValues(alpha: 0.5),
                        weight: 1,
                      ),
                      Text(
                        "Erreur lors de la récuperation \n des données",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(onPressed: refetch, child: Text("Réessayer")),
                    ],
                  ),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16),
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
                        infoRow(context, Icons.location_on, data.ticket!.event.location),

                        SizedBox(height: 10),
                        Row(
                          spacing: 8,
                          children: [
                            infoRow(
                              context,
                              Icons.calendar_month,
                              "${date!.weekDayNameShort}. ${date.monthDayNumber} ${date.monthName}",
                            ),
                            Expanded(child: SizedBox()),
                            infoRow(
                              context,
                              Icons.access_time_filled,
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
                          infoRow(context, Icons.phone, data.ticket!.buyerPhone!),

                        SizedBox(height: 8),
                        if (data.ticket!.buyerEmail != null && data.ticket!.buyerEmail!.isNotEmpty)
                          infoRow(context, Icons.mail, data.ticket!.buyerEmail!),

                        SizedBox(height: 25),
                        if (canBuyTicket)
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
