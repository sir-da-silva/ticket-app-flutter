import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_first_flutter_app/components/build_section_header.dart';
import 'package:my_first_flutter_app/components/event.dart';
import 'package:my_first_flutter_app/components/login_required.dart';
import 'package:my_first_flutter_app/components/ticket.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/user.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    Refetch<Query$GetMe>? refetchProfile;
    Refetch<Query$GetFollowedEvents>? refetchFollowedEvents;
    Refetch<Query$GetMyTickets>? refetchMyTickets;

    Future<void> refreshAll() async {
      await Future.wait([
        if (refetchProfile != null) refetchProfile!(),
        if (refetchFollowedEvents != null) refetchFollowedEvents!(),
        if (refetchMyTickets != null) refetchMyTickets!(),
      ]);
    }

    Widget buildSocialButton({
      required String data,
      required String tooltip,
      required IconData icon,
      required Color color,
    }) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onInverseSurface,
          borderRadius: BorderRadius.circular(12),
        ),
        child: IconButton(
          onPressed: () async {
            final uri = Uri.parse(data);

            if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Impossible d'ouvrir le lien."),
                  dismissDirection: DismissDirection.horizontal,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            }
          },
          icon: Icon(icon, size: 28, color: color),
          tooltip: tooltip,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Profil'),
        actionsPadding: const EdgeInsets.only(right: 16),
        actions: [
          if (auth.isAuthenticated)
            IconButton(
              onPressed: () => Navigator.pushNamed(context, RouteNames.profileEdit),
              icon: const Icon(FontAwesomeIcons.userPen, size: 20),
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
          : RefreshIndicator(
              displacement: 16,
              onRefresh: refreshAll,
              child: SingleChildScrollView(
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
                        refetchProfile = refetch;

                        Query$GetMe? data;

                        if (result.data != null) {
                          data = Query$GetMe.fromJson(result.data!);
                        }

                        return result.isLoading
                            ? Shimmer(
                                duration: Duration(seconds: 1),
                                child: Container(
                                  width: double.infinity,
                                  height: 180 + 24 * 2,
                                  color: Theme.of(context).colorScheme.surfaceContainer,
                                ),
                              )
                            : data?.me == null
                            ? SizedBox(
                                width: double.infinity,
                                height: 180 + 24 * 2,
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
                                        "Erreur ! Glissez vers le bas \n pour réactualiser.",
                                        style: TextStyle(fontSize: 16, color: Colors.grey),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  children: [
                                    // Profile Avatar with enhanced styling
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Theme.of(context).colorScheme.primaryFixed,
                                          width: 3,
                                        ),
                                      ),
                                      child: CircleAvatar(
                                        radius: 45,
                                        backgroundColor: Theme.of(context).colorScheme.primaryFixed,
                                        child: data!.me!.picture == null
                                            ? Icon(Icons.person, size: 50, color: Colors.grey)
                                            : Image.network(
                                                data.me!.picture!,
                                                fit: BoxFit.cover,
                                                errorBuilder: (context, error, stackTrace) {
                                                  return Icon(
                                                    Icons.image_not_supported,
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.onSurface.withValues(alpha: 0.15),
                                                    size: 24,
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
                                        if (data.me!.badge == Enum$UserBadge.GOLD ||
                                            data.me!.badge == Enum$UserBadge.SILVER)
                                          Icon(
                                            Icons.verified_rounded,
                                            size: 20,
                                            color: Colors.blue,
                                          ),
                                      ],
                                    ),

                                    // User Name
                                    const SizedBox(height: 2),

                                    // Email
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
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
                                          buildSocialButton(
                                            data: "https://wa.me/${data.me!.whatsapp}",
                                            icon: FontAwesomeIcons.whatsapp,
                                            tooltip: 'WhatsApp',
                                            color: const Color(0xFF25D366),
                                          ),
                                        if (data.me!.facebook != null)
                                          buildSocialButton(
                                            data: "https://www.facebook.com/${data.me!.facebook}",
                                            icon: FontAwesomeIcons.facebook,
                                            tooltip: 'Facebook',
                                            color: const Color(0xFF1877F2),
                                          ),
                                        if (data.me!.instagram != null)
                                          buildSocialButton(
                                            data: "https://www.instagram.com/${data.me!.instagram}",
                                            icon: FontAwesomeIcons.instagram,
                                            tooltip: 'Instagram',
                                            color: const Color(0xFFE4405F),
                                          ),
                                        if (data.me!.tiktok != null)
                                          buildSocialButton(
                                            data: "https://www.tiktok.com/@${data.me!.tiktok}",
                                            icon: FontAwesomeIcons.tiktok,
                                            tooltip: 'TikTok',
                                            color: const Color(0xFF000000),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                      },
                    ),

                    Padding(padding: EdgeInsets.symmetric(horizontal: 0)),

                    // Activités Suivies Section
                    Query$GetFollowedEvents$Widget(
                      builder: (result, {fetchMore, refetch}) {
                        refetchFollowedEvents = refetch;

                        Query$GetFollowedEvents? data;

                        if (result.data != null) {
                          data = Query$GetFollowedEvents.fromJson(result.data!);
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
                                    'Evenements Suivies',
                                    Icons.calendar_month_outlined,
                                    () {
                                      Navigator.pushNamed(context, "/followedEvents");
                                    },
                                  ),

                                  if (data?.followedEvents == null)
                                    Padding(
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
                                              "Erreur ! Glissez vers le bas \n pour réactualiser.",
                                              style: TextStyle(fontSize: 16, color: Colors.grey),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  else if (data!.followedEvents.isEmpty)
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(16, 60, 16, 60),
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
                                            TextButton.icon(
                                              style: ButtonStyle(
                                                backgroundColor: WidgetStatePropertyAll(
                                                  Theme.of(
                                                    context,
                                                  ).primaryColor.withValues(alpha: 0.05),
                                                ),
                                              ),
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
                                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                        itemCount: data.followedEvents.length < 10
                                            ? data.followedEvents.length
                                            : 10,
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

                    Query$GetMyTickets$Widget(
                      builder: (result, {fetchMore, refetch}) {
                        refetchMyTickets = refetch;

                        Query$GetMyTickets? data;

                        if (result.data != null) {
                          data = Query$GetMyTickets.fromJson(result.data!);
                        }

                        return Column(
                          children: result.isLoading
                              ? [
                                  // Center(
                                  //   heightFactor: 5,
                                  //   child: Column(
                                  //     crossAxisAlignment: CrossAxisAlignment.center,
                                  //     mainAxisAlignment: MainAxisAlignment.center,
                                  //     children: [CircularProgressIndicator()],
                                  //   ),
                                  // ),
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
                                              "Erreur ! Glissez vers le bas \n pour réactualiser.",
                                              style: TextStyle(fontSize: 16, color: Colors.grey),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  else if (data!.myTickets.isEmpty)
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(16, 60, 16, 60),
                                      child: Column(
                                        spacing: 8,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.confirmation_num_outlined,
                                            size: 50,
                                            color: Colors.grey.withValues(alpha: 0.5),
                                            weight: 1,
                                          ),
                                          Text(
                                            "Les tickets que vous achetez \n apparaitront ici.",
                                            style: TextStyle(fontSize: 16, color: Colors.grey),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    )
                                  else
                                    SizedBox(
                                      height: 195,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        itemCount: data.myTickets.length < 10
                                            ? data.myTickets.length
                                            : 10,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(right: 12),
                                            child: SizedBox(
                                              width: 300,
                                              child: Ticket.fromtMyTickets(data!.myTickets[index]),
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
            ),
    );
  }
}
