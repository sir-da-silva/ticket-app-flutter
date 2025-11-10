import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutter_app/components/build_section_header.dart';
import 'package:my_first_flutter_app/components/event.dart';
import 'package:my_first_flutter_app/components/login_required.dart';
import 'package:my_first_flutter_app/components/ticket.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/user.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:my_first_flutter_app/utils/get_user_badge_color.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget _buildSocialButton(BuildContext context, IconData icon, String tooltip, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, size: 24, color: color),
        tooltip: tooltip,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Profil'),
        actionsPadding: const EdgeInsets.only(right: 16),
        actions: [
          if (auth.isAuthenticated)
            IconButton(
              onPressed: () => Navigator.pushNamed(context, RouteNames.profileEdit),
              icon: const Icon(Icons.edit_outlined, size: 26),
              tooltip: 'Modifier le profil',
            ),

          const SizedBox(width: 4),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, RouteNames.settings),
            icon: const Icon(Icons.settings_outlined, size: 26),
            tooltip: 'Paramètres',
          ),
        ],
      ),
      body: !auth.isAuthenticated
          ? LoginRequired(
              icon: Icons.person,
              title: "Mon profil",
              message: "Gérer vos données personnels.",
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Header Section
                  Query$GetMe$Widget(
                    options: Options$Query$GetMe(
                      onComplete: (_, data) {
                        //
                      },
                      onError: (error) {
                        GraphQLService.operationExceptionHandler(context, error);
                      },
                    ),
                    builder: (result, {fetchMore, refetch}) {
                      Query$GetMe? data;

                      if (result.data != null) {
                        data = Query$GetMe.fromJson(result.data!);
                      }

                      return Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: result.isLoading || data == null || data.me == null
                              ? [
                                  ClipOval(
                                    child: Shimmer(
                                      enabled: result.isLoading,
                                      duration: Duration(seconds: 1),
                                      child: Container(
                                        color: Colors.grey.withValues(alpha: 0.25),
                                        width: 45 * 2 + 6,
                                        height: 45 * 2 + 6,
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 10),

                                  Shimmer(
                                    enabled: result.isLoading,
                                    duration: Duration(seconds: 1),
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withValues(alpha: 0.25),
                                      ),
                                      child: Text("", style: TextStyle(fontSize: 24)),
                                    ),
                                  ),

                                  const SizedBox(height: 5),

                                  Shimmer(
                                    enabled: result.isLoading,
                                    duration: Duration(seconds: 1),
                                    child: Container(
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withValues(alpha: 0.25),
                                      ),
                                      child: Text("", style: TextStyle(fontSize: 16)),
                                    ),
                                  ),

                                  const SizedBox(height: 15),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 16,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
                                        child: Shimmer(
                                          enabled: result.isLoading,
                                          duration: Duration(seconds: 1),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withValues(alpha: 0.25),
                                            ),
                                            child: IconButton(onPressed: null, icon: Icon(null)),
                                          ),
                                        ),
                                      ),

                                      ClipRRect(
                                        borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
                                        child: Shimmer(
                                          enabled: result.isLoading,
                                          duration: Duration(seconds: 1),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withValues(alpha: 0.25),
                                            ),
                                            child: IconButton(onPressed: null, icon: Icon(null)),
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
                                        child: Shimmer(
                                          enabled: result.isLoading,
                                          duration: Duration(seconds: 1),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withValues(alpha: 0.25),
                                            ),
                                            child: IconButton(onPressed: null, icon: Icon(null)),
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
                                        child: Shimmer(
                                          enabled: result.isLoading,
                                          duration: Duration(seconds: 1),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withValues(alpha: 0.25),
                                            ),
                                            child: IconButton(onPressed: null, icon: Icon(null)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ]
                              : [
                                  // Profile Avatar with enhanced styling
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.primary.withValues(alpha: 0.5),
                                        width: 3,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.primary.withValues(alpha: 0.3),
                                          blurRadius: 10,
                                          offset: const Offset(2, 2),
                                        ),
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      radius: 45,
                                      backgroundColor: Colors.white,
                                      child: data.me!.picture == null
                                          ? Icon(Icons.person, size: 50, color: Colors.grey)
                                          : Image.network(
                                              data.me!.picture!,
                                              fit: BoxFit.cover,
                                              errorBuilder: (context, error, stackTrace) {
                                                return Icon(
                                                  Icons.image,
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.onSurface.withValues(alpha: 0.5),
                                                  size: 32,
                                                );
                                              },
                                            ),
                                    ),
                                  ),

                                  const SizedBox(height: 10),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    spacing: 8,
                                    children: [
                                      Text(
                                        data.me!.name,
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).colorScheme.onSurface,
                                        ),
                                      ),
                                      Icon(
                                        Icons.verified_rounded,
                                        size: 20,
                                        color: getUserBadgeColor(data.me!.badge),
                                      ),
                                    ],
                                  ),

                                  // User Name
                                  const SizedBox(height: 2),

                                  // Email
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      data.me!.email,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.onSurface.withValues(alpha: 0.7),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 15),

                                  // Social Links
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 16,
                                    children: [
                                      if (data.me!.whatsapp != null)
                                        _buildSocialButton(
                                          context,
                                          FontAwesomeIcons.whatsapp,
                                          'WhatsApp',
                                          const Color(0xFF25D366),
                                        ),
                                      if (data.me!.facebook != null)
                                        _buildSocialButton(
                                          context,
                                          FontAwesomeIcons.facebook,
                                          'Facebook',
                                          const Color(0xFF1877F2),
                                        ),
                                      if (data.me!.instagram != null)
                                        _buildSocialButton(
                                          context,
                                          FontAwesomeIcons.instagram,
                                          'Instagram',
                                          const Color(0xFFE4405F),
                                        ),
                                      if (data.me!.tiktok != null)
                                        _buildSocialButton(
                                          context,
                                          FontAwesomeIcons.tiktok,
                                          'TikTok',
                                          const Color(0xFF000000),
                                        ),
                                    ],
                                  ),
                                ],
                        ),
                      );
                    },
                  ),

                  Padding(padding: EdgeInsets.symmetric(horizontal: 0), child: Divider()),

                  // Activités Suivies Section
                  Query$GetFollowedEvents$Widget(
                    builder: (result, {fetchMore, refetch}) {
                      Query$GetFollowedEvents? data;

                      if (result.data != null) {
                        data = Query$GetFollowedEvents.fromJson(result.data!);
                      }

                      return Column(
                        children: result.isLoading
                            ? [
                                Center(
                                  heightFactor: 5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [CircularProgressIndicator()],
                                  ),
                                ),
                              ]
                            : [
                                buildSectionHeader(
                                  context,
                                  'Evenements Suivies',
                                  Icons.calendar_month_outlined,
                                  () {
                                    Navigator.pushNamed(context, "/followedEvents");
                                  },
                                ),

                                if (data?.followedEvents == null)
                                  Padding(
                                    padding: EdgeInsetsGeometry.fromLTRB(16, 50, 16, 50),
                                    child: Center(
                                      child: Column(
                                        spacing: 10,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Erreur lors de la recuperation \n des donnees",
                                            style: TextStyle(fontSize: 16, color: Colors.grey),
                                            textAlign: TextAlign.center,
                                          ),
                                          ElevatedButton.icon(
                                            onPressed: refetch,
                                            label: Text("Reessayer"),
                                            icon: Icon(Icons.refresh),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                else if (data!.followedEvents.isEmpty)
                                  Padding(
                                    padding: EdgeInsetsGeometry.fromLTRB(16, 50, 16, 50),
                                    child: Center(
                                      child: Column(
                                        spacing: 10,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Vous ne suivez actuellement \n aucun évenement",
                                            style: TextStyle(fontSize: 16, color: Colors.grey),
                                            textAlign: TextAlign.center,
                                          ),
                                          ElevatedButton.icon(
                                            onPressed: () {
                                              Navigator.pushNamed(context, RouteNames.search);
                                            },
                                            label: Text("Rechercher"),
                                            icon: Icon(Icons.search),
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
                                      padding: const EdgeInsets.symmetric(horizontal: 16),
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(right: 12),
                                          child: SizedBox(
                                            width: 300,
                                            child: Event.fromFollowedEvents(
                                              data!.followedEvents[index],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                              ],
                      );
                    },
                  ),
                  SizedBox(height: 15),

                  Query$GetMyTickets$Widget(
                    builder: (result, {fetchMore, refetch}) {
                      Query$GetMyTickets? data;

                      if (result.data != null) {
                        data = Query$GetMyTickets.fromJson(result.data!);
                      }

                      return Column(
                        children: result.isLoading
                            ? [
                                Center(
                                  heightFactor: 5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [CircularProgressIndicator()],
                                  ),
                                ),
                              ]
                            : [
                                buildSectionHeader(
                                  context,
                                  'Tickets Achetés',
                                  Icons.confirmation_number_outlined,
                                  () {},
                                ),

                                if (data?.myTickets == null)
                                  Padding(
                                    padding: EdgeInsetsGeometry.fromLTRB(16, 50, 16, 50),
                                    child: Center(
                                      child: Column(
                                        spacing: 10,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Erreur lors de la recuperation \n des donnees ",
                                            style: TextStyle(fontSize: 16, color: Colors.grey),
                                            textAlign: TextAlign.center,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  refetch!();
                                                },
                                                child: Row(
                                                  spacing: 10,
                                                  children: [
                                                    Icon(Icons.refresh),
                                                    Text("Reessayer"),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                else if (data!.myTickets.isEmpty)
                                  Padding(
                                    padding: EdgeInsetsGeometry.fromLTRB(16, 50, 16, 50),
                                    child: Text(
                                      "Les tickets que vous achetez \n apparaitront ici.",
                                      style: TextStyle(fontSize: 16, color: Colors.grey),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                else
                                  SizedBox(
                                    height: 200,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      padding: const EdgeInsets.symmetric(horizontal: 16),
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(right: 12),
                                          child: SizedBox(
                                            width: 300,
                                            child: TicketCard(
                                              ticketNumber: '${1000 + index}',
                                              title: 'Ticket ${index + 1}',
                                              // status: _getTicketStatus(index),
                                              status: "",
                                              date:
                                                  '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                              // statusColor: _getTicketStatusColor(index),
                                              statusColor: Colors.amber,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                              ],
                      );
                    },
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
    );
  }
}
