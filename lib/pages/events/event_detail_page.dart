import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_app/components/actuality_card.dart';
import 'package:my_first_flutter_app/components/build_section_header.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/actuality.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/user.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';
import 'package:my_first_flutter_app/utils/get_user_badge_color.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class EventDetailPage extends StatelessWidget {
  final String eventId;

  const EventDetailPage({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Query$GetEvent$Widget(
      options: Options$Query$GetEvent(
        onError: (error) {
          GraphQLService.operationExceptionHandler(context, error);
        },
        variables: Variables$Query$GetEvent(id: eventId),
      ),
      builder: (result, {refetch, fetchMore}) {
        Query$GetEvent? data;

        CustomDateParser? date;

        if (result.data != null) {
          data = Query$GetEvent.fromJson(result.data!);

          if (data.event?.date != null) {
            date = CustomDateParser(date: data.event!.date);
          }
        }

        void followEvent() {
          if (!auth.isAuthenticated) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "Vous devez être connecté pour suivre des évenements. Appuyez longuement sur le même icone pour vous connecter.",
                ),
                showCloseIcon: true,
              ),
            );
          } else {
            // TODO: Follow event
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Suivre')));
          }
        }

        void loginPrompt() {
          Navigator.pushNamed(context, RouteNames.login);
        }

        void shareEvent() {
          // TODO: Share event
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Partager')));
        }

        Widget infoRow(String icon, String info) {
          return Row(
            spacing: 8,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  // color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 4),
                  // child: Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
                  child: Text(icon, style: TextStyle(fontSize: 16)),
                ),
              ),
              Text(info, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          );
        }

        return Scaffold(
          appBar: AppBar(title: const Text('Détails de l\'événement')),
          body: result.isLoading
              ? Center(child: CircularProgressIndicator())
              : data?.event == null
              ? Center(
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Erreur lors de la recuperation \n des données.",
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
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            // child: const Icon(Icons.event, size: 100, color: Colors.grey),
                            child: Image.network(
                              data!.event!.picture,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(Icons.image, color: Colors.grey, size: 50);
                              },
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Theme.of(context).colorScheme.surface,
                                    Theme.of(context).colorScheme.surface,
                                  ],
                                  stops: [0.0, 0.90, 0.95],
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            top: 12,
                            right: 12,
                            child: Container(
                              decoration: BoxDecoration(
                                // color: Colors.black.withValues(alpha: 0.6),
                                color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.9),
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withValues(alpha: 0.25),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    // color: Colors.white,
                                    icon: const Icon(Icons.notifications_on_outlined),
                                    onPressed: followEvent,
                                    onLongPress: !auth.isAuthenticated ? loginPrompt : null,
                                  ),
                                  IconButton(
                                    // color: Colors.white,
                                    icon: const Icon(Icons.share),
                                    onPressed: shareEvent,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            left: 0,
                            bottom: 0,
                            right: 0,
                            child: Padding(
                              padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                              child: Text(
                                data.event!.title,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.event!.description,
                              style: TextStyle(
                                //
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            SizedBox(height: 20),
                            infoRow(
                              // Icons.category_outlined
                              "🎨",
                              data.event!.category,
                            ),

                            SizedBox(height: 20),
                            Row(
                              spacing: 8,
                              children: [
                                infoRow(
                                  // Icons.calendar_today_rounded,
                                  "📆",
                                  "${date!.weekDayNameShort}. ${date.monthDayNumber} ${date.monthName}",
                                ),
                                Expanded(child: SizedBox()),
                                infoRow(
                                  // Icons.access_time_rounded,
                                  "🕐",
                                  "${date.hour12}:${date.minute} ${date.meridiem}",
                                ),
                              ],
                            ),

                            SizedBox(height: 20),
                            infoRow(
                              // Icons.location_on_outlined
                              "📍",
                              data.event!.location,
                            ),

                            SizedBox(height: 20),
                            infoRow(
                              // Icons.confirmation_number_outlined,
                              "🎟️",
                              "${data.event!.price.toDouble()} ${data.event!.priceCurrency}",
                            ),

                            SizedBox(height: 20),
                            Text("Crée par :", style: TextStyle(fontWeight: FontWeight.bold)),

                            SizedBox(height: 8),
                            if (data.event?.createdBy != null)
                              Query$GetUser$Widget(
                                options: Options$Query$GetUser(
                                  variables: Variables$Query$GetUser(id: data.event!.createdBy!.id),
                                ),
                                builder: (result, {refetch, fetchMore}) {
                                  Query$GetUser? data;

                                  if (result.data != null) {
                                    data = Query$GetUser.fromJson(result.data!);
                                  }

                                  return result.isLoading || data?.user == null
                                      ? ClipRRect(
                                          borderRadius: BorderRadius.circular(12),
                                          child: Shimmer(
                                            enabled: result.isLoading,
                                            duration: Duration(seconds: 1),
                                            interval: Duration(seconds: 1),
                                            child: SizedBox(
                                              width: 100,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.primary.withValues(alpha: 0.1),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8),
                                                  child: Row(
                                                    spacing: 8,
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 12,
                                                        backgroundColor: Colors.white,
                                                        child: Icon(
                                                          Icons.person,
                                                          size: 20,
                                                          color: Theme.of(context)
                                                              .colorScheme
                                                              .primary
                                                              .withValues(alpha: 0.1),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      : IntrinsicWidth(
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.primary.withValues(alpha: 0.1),
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                //
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.all(12),
                                                child: Row(
                                                  spacing: 8,
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 12,
                                                      child: data?.user?.picture == null
                                                          ? Icon(
                                                              Icons.person,
                                                              size: 20,
                                                              color: Theme.of(
                                                                context,
                                                              ).colorScheme.primary,
                                                            )
                                                          : Image.network(
                                                              data!.user!.picture!,
                                                              errorBuilder:
                                                                  (context, error, stackTrace) {
                                                                    return Icon(
                                                                      Icons.person,
                                                                      color: Theme.of(
                                                                        context,
                                                                      ).colorScheme.surface,
                                                                    );
                                                                  },
                                                            ),
                                                    ),
                                                    Text(
                                                      data!.user!.name,
                                                      style: TextStyle(fontWeight: FontWeight.bold),
                                                    ),
                                                    if (data.user?.badge != null)
                                                      Icon(
                                                        Icons.verified_rounded,
                                                        size: 14,
                                                        color: getUserBadgeColor(data.user!.badge),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                },
                              ),

                            const SizedBox(height: 24),
                            Text("Mentions", style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 156,
                        child: Query$LastActualities$Widget(
                          options: Options$Query$LastActualities(
                            onError: (error) {
                              //
                            },
                          ),

                          builder: (result, {fetchMore, refetch}) {
                            Query$LastActualities? data;

                            if (result.data != null) {
                              data = Query$LastActualities.fromJson(result.data!);
                            }

                            return result.isLoading
                                ? ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(right: 12),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(12),
                                          child: Shimmer(
                                            //
                                            child: SizedBox(
                                              width: 100,
                                              height: 140,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withValues(alpha: 0.25),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                : data?.lastActualities == null
                                ? Padding(
                                    padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
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
                                : data!.lastActualities.isEmpty
                                ? Padding(
                                    padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                                    child: Center(
                                      child: Column(
                                        spacing: 10,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Aucune mention en actualités",
                                            style: TextStyle(fontSize: 16, color: Colors.grey),
                                            textAlign: TextAlign.center,
                                          ),
                                          ElevatedButton.icon(
                                            onPressed: () {
                                              Navigator.pushNamed(context, "/createActuality");
                                            },
                                            label: Text("Creer un"),
                                            icon: Icon(Icons.add),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                                    itemCount: data.lastActualities.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(right: 12),
                                        child: actualiteCard(
                                          context,
                                          actuality: data!.lastActualities[index],
                                        ),
                                      );
                                    },
                                  );
                          },
                        ),
                      ),

                      buildSectionHeader(context, "Même createur", Icons.person, () {
                        //
                      }),

                      buildSectionHeader(context, "Même categorie", Icons.category, () {
                        //
                      }),

                      buildSectionHeader(context, "Même date", Icons.calendar_month, () {
                        //
                      }),

                      SizedBox(height: 100),
                    ],
                  ),
                ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: data?.event != null
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      //
                      border: BoxBorder.all(color: Colors.white.withValues(alpha: 0.75), width: 2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RouteNames.createTicket,
                          arguments: data!.event!.id,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        iconColor: Theme.of(context).colorScheme.surface,
                      ),
                      icon: Icon(Icons.confirmation_number),

                      label: Text(
                        'Acheter un ticket',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ),
                  ),
                )
              : null,
        );
      },
    );
  }
}
