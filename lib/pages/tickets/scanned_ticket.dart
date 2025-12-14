import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';
import 'package:my_first_flutter_app/navigation/app_router.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';

class ScannedTicketPage extends HookWidget {
  final Variables$Mutation$ScanTicket variables;

  const ScannedTicketPage({super.key, required this.variables});

  @override
  Widget build(BuildContext context) {
    Mutation$ScanTicket? data;

    final scanTicket = useMutation$ScanTicket(
      WidgetOptions$Mutation$ScanTicket(
        onError: (error) {
          GraphQLService.operationExceptionHandler(context, error);
        },
      ),
    );

    useEffect(() {
      scanTicket.runMutation(variables);
      return null;
    }, [variables.code, variables.eventId]);

    if (scanTicket.result.data != null) {
      data = Mutation$ScanTicket.fromJson(scanTicket.result.data!);
    }

    return Scaffold(
      body: Center(
        child: data == null && !scanTicket.result.hasException
            ? Center(
                child: Column(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Text("Veuillez patientez ...", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              )
            : data == null && scanTicket.result.hasException
            ? Center(
                child: Column(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wifi_off,
                      size: 50,
                      color: Colors.grey.withValues(alpha: 0.5),
                      weight: 1,
                    ),
                    Text(
                      "ERREUR ! \n Verifiez votre connexion !",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Revenir au scanner"),
                    ),
                  ],
                ),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: data?.scanTicket.ticket == null
                        ? [
                            Text(
                              data!.scanTicket.message,
                              style: TextStyle(
                                fontSize: 32,
                                // color: Theme.of(context).colorScheme.error,
                              ),
                              textAlign: TextAlign.center,
                            ),

                            SizedBox(height: 30),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Revenir au scanner"),
                            ),
                          ]
                        : [
                            Icon(
                              Icons.confirmation_num_outlined,
                              size: 75,
                              color: Theme.of(context).colorScheme.primaryFixedDim,
                            ),

                            SizedBox(height: 16),
                            Text(
                              "Jhane Doe",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),

                            SizedBox(height: 16),
                            IntrinsicWidth(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  // color: Theme.of(context).colorScheme.primaryFixedDim.withValues(alpha: 0.25),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  spacing: 8,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      size: 24,
                                      color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                    ),
                                    Text(
                                      "+509 41 55 4689",
                                      style: TextStyle(
                                        color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 16),
                            IntrinsicWidth(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  // color: Theme.of(context).colorScheme.primaryFixedDim.withValues(alpha: 0.25),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  spacing: 8,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.mail_outline,
                                      size: 24,
                                      color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                    ),
                                    Text(
                                      "me@gmail.com",
                                      style: TextStyle(
                                        color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 32),

                            Text(
                              "Date de procuration",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            IntrinsicWidth(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.primaryFixedDim.withValues(alpha: 0.25),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  spacing: 8,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      size: 20,
                                      color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                    ),
                                    Text(
                                      "28 Avril",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 32),

                            Text(
                              "Statut du ticket",
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            SizedBox(height: 8),
                            IntrinsicWidth(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.green.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  spacing: 8,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      size: 20,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Text(
                                      "Checked !",
                                      style: TextStyle(fontSize: 18, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 50),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                backgroundColor: Theme.of(context).colorScheme.primary,
                                foregroundColor: Theme.of(context).colorScheme.surface,
                              ),
                              child: Text(
                                "OK",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
