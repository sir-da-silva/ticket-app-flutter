import 'package:flutter/material.dart';

class ScannedTicketPage extends StatelessWidget {
  final String ticketId;
  const ScannedTicketPage({super.key, required this.ticketId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 5),
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
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 5),
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

                Text("Date de procuration", style: TextStyle(fontSize: 16, color: Colors.grey)),
                SizedBox(height: 8),
                IntrinsicWidth(
                  child: Container(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryFixedDim.withValues(alpha: 0.25),
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

                Text("Statut du ticket", style: TextStyle(fontSize: 16, color: Colors.grey)),
                SizedBox(height: 8),
                IntrinsicWidth(
                  child: Container(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 5),
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
                        Text("Checked !", style: TextStyle(fontSize: 18, color: Colors.green)),
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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.surface,
                  ),
                  child: Text("OK", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
