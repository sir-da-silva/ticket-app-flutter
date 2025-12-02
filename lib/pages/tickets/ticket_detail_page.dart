import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/event.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:provider/provider.dart';

class TicketDetailPage extends StatefulWidget {
  final String eventId;

  const TicketDetailPage({super.key, required this.eventId});

  @override
  State<TicketDetailPage> createState() => _TicketDetailPageState();
}

class _TicketDetailPageState extends State<TicketDetailPage> {
  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Ticket"), elevation: 0),
      body: Query$GetTicket$Widget(
        options: Options$Query$GetTicket(
          variables: Variables$Query$GetTicket(id: widget.eventId),
          onError: (error) {
            GraphQLService.operationExceptionHandler(context, error);
          },
        ),
        builder: (result, {refetch, fetchMore}) {
          Query$GetTicket? data;

          if (result.data != null) {
            data = Query$GetTicket.fromJson(result.data!);
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
              : Padding(
                  padding: EdgeInsetsGeometry.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(child: AspectRatio(aspectRatio: 1)),

                      SizedBox(height: 12),

                      Text("Evenement", style: TextStyle(fontWeight: FontWeight.w600)),
                      Text(
                        data!.ticket!.event.title,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      Row(children: [Icon(Icons.location_on), Text(data.ticket!.event.location)]),
                      Row(
                        children: [
                          Icon(Icons.calendar_month),
                          Text(data.ticket!.event.date.toString()),
                        ],
                      ),

                      Text("Béneficiaire", style: TextStyle(fontWeight: FontWeight.w600)),
                      Text(
                        data.ticket!.buyerName!,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      if (data.ticket!.buyerPhone != null && data.ticket!.buyerPhone!.isNotEmpty)
                        Row(children: [Icon(Icons.phone), Text(data.ticket!.buyerPhone!)]),
                      if (data.ticket!.buyerEmail != null && data.ticket!.buyerEmail!.isNotEmpty)
                        Row(children: [Icon(Icons.mail), Text(data.ticket!.buyerEmail!)]),

                      SizedBox(height: 12),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            RouteNames.createTicket,
                            arguments: data!.ticket!.event.id,
                          );
                        },
                        child: Text("En achter un autre"),
                      ),

                      SizedBox(height: 12),

                      ElevatedButton(
                        onPressed: () {
                          // TODO: Save ticket on the phone
                        },
                        child: Text("Enregistrer sur le telephone"),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
