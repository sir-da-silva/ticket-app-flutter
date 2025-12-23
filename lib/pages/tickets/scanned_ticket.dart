import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';

// Response messages my message code
final messages = {
  Enum$ScanOutputMessageCode.TICKET_NOT_FOUND: CheckedTicketOutputMessage(
    icon: Icons.search_off,
    text: "Non Trouvé !",
  ),
  Enum$ScanOutputMessageCode.USER_NO_ACCESS: CheckedTicketOutputMessage(
    icon: Icons.block,
    text: "403 - Erreur !",
  ),
  Enum$ScanOutputMessageCode.TICKET_USED: CheckedTicketOutputMessage(
    icon: Icons.block,
    text: "Ticket Déjà Utilisé !",
  ),
  Enum$ScanOutputMessageCode.SUCCESS: CheckedTicketOutputMessage(
    icon: Icons.check_circle_outline_outlined,
    text: "Success !",
  ),
  Enum$ScanOutputMessageCode.UNKNOWN: CheckedTicketOutputMessage(
    icon: Icons.help_outline,
    text: "Erreur Inconnu !",
  ),
  Enum$ScanOutputMessageCode.$unknown: CheckedTicketOutputMessage(
    icon: Icons.help_outline,
    text: "Erreur Inconnu !",
  ),
};

// Single response messages
class CheckedTicketOutputMessage {
  final String text;
  final IconData icon;

  const CheckedTicketOutputMessage({required this.text, required this.icon});
}

class ScannedTicketPage extends HookWidget {
  final Variables$Mutation$CheckTicket variables;

  const ScannedTicketPage({super.key, required this.variables});

  @override
  Widget build(BuildContext context) {
    final pageColor = useState<Color?>(null);

    Mutation$CheckTicket? data;
    CustomDateParser? date;
    CustomDateParser? scannedAt;

    // TODO: remake

    // Check Ticket Mutation
    final checkTicketMutation = useMutation$CheckTicket(
      // WidgetOptions$Mutation$CheckTicket(
      //   onCompleted: (_, result) {
      //     data = result;
      //   },
      // ),
    );

    // Execute The Mutattion
    useEffect(() {
      checkTicketMutation.runMutation(variables);
      return null;
    }, [variables.code, variables.eventId]);

    // Handle Data
    if (checkTicketMutation.result.data != null) {
      data = Mutation$CheckTicket.fromJson(checkTicketMutation.result.data!);

      if (data.checkTicket.ticket != null) {
        date = CustomDateParser(date: data.checkTicket.ticket!.createdAt);

        if (data.checkTicket.ticket!.scannedAt != null) {
          scannedAt = CustomDateParser(date: data.checkTicket.ticket!.scannedAt!);
        }

        if (data.checkTicket.messageCode == Enum$ScanOutputMessageCode.SUCCESS) {
          pageColor.value = Color(0xFF2E7D32);
        } else {
          pageColor.value = Color(0xFFC62828);
        }
      }
    }

    return Scaffold(
      backgroundColor: pageColor.value,
      body: Center(
        child: data == null && !checkTicketMutation.result.hasException
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
            : data == null && checkTicketMutation.result.hasException
            ? Center(
                child: Column(
                  spacing: 10,
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

                    SizedBox(height: 30),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
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
                    children: [
                      data?.checkTicket.ticket == null
                          ? Column(
                              spacing: 10,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      messages[data!.checkTicket.messageCode]?.icon,
                                      color: Colors.grey.withValues(alpha: 0.5),
                                      size: 75,
                                    ),
                                    Text(
                                      messages.containsKey(data.checkTicket.messageCode)
                                          ? messages[data.checkTicket.messageCode]!.text
                                          : "Erreur Iconnu !",
                                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),

                                SizedBox(height: 30),

                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                                    ),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("Revenir au scanner"),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                Icon(
                                  Icons.confirmation_num_outlined,
                                  size: 75,
                                  color: Colors.white.withValues(alpha: 0.75),
                                ),

                                if (data!.checkTicket.ticket!.buyerName != null)
                                  Column(
                                    children: [
                                      SizedBox(height: 16),
                                      Text(
                                        data.checkTicket.ticket!.buyerName!,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),

                                if (data.checkTicket.ticket!.buyerPhone != null)
                                  if (data.checkTicket.ticket!.buyerPhone!.isNotEmpty)
                                    Column(
                                      children: [
                                        SizedBox(height: 16),
                                        IntrinsicWidth(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 8,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white.withValues(alpha: 0.1),
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
                                                  color: Colors.white.withValues(alpha: 0.95),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                Text(
                                                  data.checkTicket.ticket!.buyerPhone!,
                                                  style: TextStyle(
                                                    color: Colors.white.withValues(alpha: 0.95),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                if (data.checkTicket.ticket!.buyerEmail != null)
                                  if (data.checkTicket.ticket!.buyerEmail!.isNotEmpty)
                                    Column(
                                      children: [
                                        SizedBox(height: 16),
                                        IntrinsicWidth(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 8,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white.withValues(alpha: 0.1),
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
                                                  color: Colors.white.withValues(alpha: 0.95),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                Text(
                                                  data.checkTicket.ticket!.buyerEmail!,
                                                  style: TextStyle(
                                                    color: Colors.white.withValues(alpha: 0.95),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                SizedBox(height: 32),
                                Text(
                                  "Date de procuration :",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white.withValues(alpha: 0.55),
                                  ),
                                ),
                                SizedBox(height: 8),
                                IntrinsicWidth(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withValues(alpha: 0.1),
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
                                          color: Colors.white.withValues(alpha: 1),
                                        ),
                                        Text(
                                          "${date!.monthDayNumber} ${date.monthName}",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white.withValues(alpha: 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(height: 32),
                                Text(
                                  "Statut :",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white.withValues(alpha: 0.55),
                                  ),
                                ),
                                Row(
                                  spacing: 8,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      messages[data.checkTicket.messageCode]!.icon,
                                      size: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Text(
                                      messages[data.checkTicket.messageCode]!.text,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),

                                if (data.checkTicket.ticket!.scannedBy != null)
                                  Column(
                                    children: [
                                      SizedBox(height: 32),
                                      Text(
                                        "Checké par :",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white.withValues(alpha: 0.55),
                                        ),
                                      ),
                                      Text(
                                        data.checkTicket.ticket!.scannedBy!.name,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      if (data.checkTicket.ticket!.scannedAt != null)
                                        Text(
                                          "${scannedAt!.monthDayNumber} ${scannedAt.monthNameShort} ${scannedAt.hour12}:${scannedAt.minute} ${scannedAt.meridiem}",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white.withValues(alpha: .85),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                    ],
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
                                    backgroundColor: Colors.white.withValues(alpha: 0.99),
                                    foregroundColor: Theme.of(context).colorScheme.primary,
                                  ),
                                  child: Text(
                                    "OK",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
