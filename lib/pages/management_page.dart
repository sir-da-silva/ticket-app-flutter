import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutter_app/components/build_section_header.dart';
import 'package:my_first_flutter_app/components/event.dart';
import 'package:my_first_flutter_app/components/login_required.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/user.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/pages/events/select_event_modal.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ManagementPage extends StatelessWidget {
  const ManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestion'),
        actionsPadding: const EdgeInsets.only(right: 16),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, RouteNames.search),
            icon: const Icon(Icons.search_rounded, size: 28),
            tooltip: 'Rechercher',
          ),
          const SizedBox(width: 4),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, RouteNames.notifications),
            icon: const Icon(Icons.notifications_outlined, size: 28),
            tooltip: 'Notifications',
          ),
        ],
      ),

      body: !auth.isAuthenticated
          ? LoginRequired(
              icon: Icons.assignment,
              title: "Gestion",
              message: "Gérez vos activités et votre balance !",
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  // Balance Card
                  Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      spacing: 16,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                Icons.account_balance_wallet_outlined,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Solde Disponible',
                                    style: TextStyle(
                                      color: Colors.white.withValues(alpha: 0.9),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 4),

                                  Query$GetWalletBalance$Widget(
                                    builder: (result, {fetchMore, refetch}) {
                                      Query$GetWalletBalance? data;

                                      if (result.data != null) {
                                        data = Query$GetWalletBalance.fromJson(result.data!);
                                      }

                                      return result.isLoading
                                          ? ClipRRect(
                                              borderRadius: BorderRadiusGeometry.all(
                                                Radius.circular(10),
                                              ),
                                              child: Shimmer(
                                                duration: Duration(seconds: 1),
                                                child: Container(
                                                  width: 125,
                                                  color: Colors.white.withValues(alpha: 0.1),
                                                  child: Text("", style: TextStyle(fontSize: 24)),
                                                ),
                                              ),
                                            )
                                          : Row(
                                              children: [
                                                Text(
                                                  data?.me?.walletBalance.toString() ?? "0",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(width: 8),
                                                Text(
                                                  "HTG",
                                                  style: TextStyle(
                                                    color: Colors.white.withValues(alpha: 0.9),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 16,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.arrow_downward_rounded),
                                label: Text("Depot"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white.withValues(alpha: 0.85),
                                  foregroundColor: Theme.of(context).colorScheme.primary,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/debit");
                                },
                              ),
                            ),

                            Expanded(
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.arrow_upward),
                                label: Text("Retrait"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white.withValues(alpha: 0.85),
                                  foregroundColor: Theme.of(context).colorScheme.primary,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/withdrawal");
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Actions Grid
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSurface,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
                          Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.1),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          children: [
                            _buildAction(
                              context,
                              Icons.add,
                              "Creer un Evenement",
                              Colors.blue,
                              () => Navigator.pushNamed(context, RouteNames.createEvent),
                            ),
                            _buildAction(
                              context,
                              Icons.receipt_long,
                              "Generer un Ticket",
                              Colors.green,
                              () => selectEvent(context, (eventId) {
                                Navigator.pushReplacementNamed(
                                  context,
                                  RouteNames.createTicket,
                                  arguments: eventId,
                                );
                              }),
                            ),
                            _buildAction(
                              context,
                              Icons.edit_calendar_outlined,
                              "Modifier un Evenement",
                              Colors.orange,
                              () => selectEvent(context, (eventId) {
                                Navigator.pushReplacementNamed(
                                  context,
                                  RouteNames.editEvent,
                                  arguments: eventId,
                                );
                              }),
                            ),
                            _buildAction(
                              context,
                              FontAwesomeIcons.user,
                              "Co-gestionnaires",
                              Colors.purple,
                              () => selectEvent(context, (eventId) {
                                Navigator.pushReplacementNamed(context, RouteNames.eventManagers);
                              }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Mes Activités Section
                  Query$GetMyEvents$Widget(
                    builder: (result, {fetchMore, refetch}) {
                      Query$GetMyEvents? data;

                      if (result.data != null) {
                        data = Query$GetMyEvents.fromJson(result.data!);
                      }

                      return Column(
                        children: result.isLoading
                            ? [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(16, 100, 16, 100),
                                  child: Center(child: CircularProgressIndicator()),
                                ),
                              ]
                            : [
                                buildSectionHeader(
                                  context,
                                  'Mes Evenements',
                                  Icons.calendar_month_outlined,
                                  () {
                                    Navigator.pushNamed(context, "/myEvents");
                                  },
                                ),

                                if (data == null)
                                  GestureDetector(
                                    onTap: refetch,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(16, 60, 16, 60),
                                      child: Center(
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
                                              "Erreur ! Appuyez pour \n réactualiser.",
                                              style: TextStyle(fontSize: 16, color: Colors.grey),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                else if (data.myEvents.isEmpty)
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(16, 60, 16, 60),
                                    child: Center(
                                      child: Column(
                                        spacing: 8,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.inbox_outlined,
                                            size: 50,
                                            color: Colors.grey.withValues(alpha: 0.5),
                                            weight: 1,
                                          ),
                                          Text(
                                            "Aucun évenement",
                                            style: TextStyle(fontSize: 16, color: Colors.grey),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                else
                                  SizedBox(
                                    height: 250,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(right: 12),
                                          child: SizedBox(
                                            width: 300,
                                            child: Event.fromMyEvent(data!.myEvents[index]),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                              ],
                      );
                    },
                  ),

                  Divider(),

                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 25, 16, 25),
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(text: "Cliquez sur le boutton "),
                            WidgetSpan(child: Icon(Icons.crop_free_rounded, size: 18)),
                            TextSpan(
                              text: " en-dessous \n pour commencer à checker \n des tickets.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
    );
  }
}

Widget _buildAction(
  BuildContext context,
  IconData icon,
  String label,
  Color color,
  VoidCallback onTap,
) {
  return InkWell(
    borderRadius: BorderRadius.circular(16),
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        // border: Border.all(color: color.withValues(alpha: 0.2), width: 1),
        boxShadow: [
          BoxShadow(color: color.withValues(alpha: 0.1), blurRadius: 8, offset: const Offset(0, 4)),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 28, color: color),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
