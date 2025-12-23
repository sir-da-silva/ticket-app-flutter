import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_first_flutter_app/components/actuality_card.dart';
import 'package:my_first_flutter_app/components/build_section_header.dart';
import 'package:my_first_flutter_app/components/follow_event_widget.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/actuality.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/user.graphql.dart';
import 'package:my_first_flutter_app/generated/graphql/schema.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/utils/date_parser.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:my_first_flutter_app/components/info_row.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class EventDetailPage extends HookWidget {
  final String eventId;

  const EventDetailPage({super.key, required this.eventId});

  Widget _userCard(BuildContext context, String userId) {
    return Query$GetUser$Widget(
      options: Options$Query$GetUser(variables: Variables$Query$GetUser(id: userId)),
      builder: (result, {refetch, fetchMore}) {
        Query$GetUser? data;

        if (result.data != null) {
          data = Query$GetUser.fromJson(result.data!);
        }

        return result.isLoading || data?.user == null
            ? SizedBox(
                width: 125,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Shimmer(
                    enabled: result.isLoading,
                    duration: Duration(seconds: 1),
                    interval: Duration(seconds: 1),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primaryFixed),
                      child: Row(
                        spacing: 8,
                        children: [CircleAvatar(radius: 12, backgroundColor: Colors.white)],
                      ),
                    ),
                  ),
                ),
              )
            : IntrinsicWidth(
                child: GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).colorScheme.primaryFixed,
                    ),
                    child: Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.white,
                          child: data?.user?.picture != null
                              ? Image.network(
                                  data!.user!.picture!,
                                  errorBuilder: (context, error, stackTrace) {
                                    return SizedBox();
                                  },
                                )
                              : null,
                        ),

                        Text(data!.user!.name, style: TextStyle(fontWeight: FontWeight.bold)),

                        switch (data.user!.badge) {
                          Enum$UserBadge.GOLD => Icon(
                            Icons.verified_rounded,
                            size: 14,
                            color: Colors.blue,
                          ),
                          Enum$UserBadge.SILVER => Icon(
                            Icons.verified_rounded,
                            size: 14,
                            color: Colors.blue,
                          ),
                          Enum$UserBadge.BRONZE => SizedBox(),
                          Enum$UserBadge.$unknown => SizedBox(),
                        },
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
        bool canBuyTicket = false;

        if (result.data != null) {
          data = Query$GetEvent.fromJson(result.data!);

          if (data.event?.date != null) {
            date = CustomDateParser(date: data.event!.date);
            canBuyTicket = !(data.event!.date.difference(DateTime.now()).inHours < -12);
          }
        }

        return Scaffold(
          appBar: AppBar(
            title: Text("Evénement"),
            // actionsPadding: EdgeInsets.only(right: 16),
            // actions: [
            //   if (data?.event != null)
            //     customFollowEventWidget(
            //       context,
            //       eventId: data!.event!.id,
            //       previewState: data.event?.followers?.isNotEmpty,
            //       builder: (follow, isFollowed) => IconButton(
            //         icon: isFollowed ?? false
            //             ? const Icon(Icons.notifications_on)
            //             : const Icon(Icons.notifications_outlined),
            //         onPressed: follow,
            //       ),
            //     ),
            //   if (data?.event != null)
            //     IconButton(
            //       icon: const Icon(Icons.share),
            //       onPressed: () {
            //         // TODO: Share
            //       },
            //     ),
            // ],
          ),
          body: result.isLoading
              ? Center(child: CircularProgressIndicator())
              : data?.event == null
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
                                  customFollowEventWidget(
                                    context,
                                    eventId: data.event!.id,
                                    previewState: data.event?.followers?.isNotEmpty,
                                    builder: (follow, isFollowed) => IconButton(
                                      icon: isFollowed ?? false
                                          ? const Icon(Icons.notifications_on)
                                          : const Icon(Icons.notifications_outlined),
                                      onPressed: follow,
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.share),
                                    onPressed: () {
                                      // TODO: Share
                                    },
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
                              padding: EdgeInsets.symmetric(horizontal: 16),
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
                        padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.event!.description,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                            ),

                            const SizedBox(height: 10),
                            infoRow(context, Icons.color_lens, data.event!.category),

                            const SizedBox(height: 10),
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

                            const SizedBox(height: 10),
                            infoRow(context, Icons.location_on, data.event!.location),

                            const SizedBox(height: 10),
                            infoRow(
                              context,
                              Icons.confirmation_number,
                              "${data.event!.price.toDouble()} ${data.event!.priceCurrency}",
                            ),

                            const SizedBox(height: 20),
                            Text("Crée par :", style: TextStyle(fontWeight: FontWeight.bold)),

                            const SizedBox(height: 4),
                            if (data.event?.createdBy != null)
                              _userCard(context, data.event!.createdBy!.id),

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
                                    padding: EdgeInsets.symmetric(horizontal: 16),
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
                                    padding: EdgeInsets.symmetric(horizontal: 16),
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
          floatingActionButton: data?.event != null && canBuyTicket
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
                        backgroundColor: Theme.of(context).colorScheme.onPrimaryFixed,
                        foregroundColor: Theme.of(context).colorScheme.surface,
                      ),
                      icon: Icon(Icons.confirmation_number),
                      label: Text('Acheter un ticket', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                )
              : null,
        );
      },
    );
  }
}
