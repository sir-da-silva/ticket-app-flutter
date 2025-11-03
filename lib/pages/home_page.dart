import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/actuality_card.dart';
import 'package:my_first_flutter_app/components/build_section_header.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/actuality.graphql.dart';
import 'package:my_first_flutter_app/navigation/app_router.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('My First Flutter App'),
        title: SizedBox(height: 24, child: Image.asset("assets/images/logoipsum-311.png")),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Section Actualités avec liste horizontale
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

                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                    itemCount: 1 + (data?.lastActualities.length ?? 0),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: actualiteCard(
                            context,
                            actuality: data?.myLastActuality,
                            isCurrentUser: true,
                          ),
                        );
                      }

                      return Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: actualiteCard(context, actuality: data!.lastActualities[index - 1]),
                      );
                    },
                  );
                },
              ),
            ),

            buildSectionHeader(
              context,
              "Les plus populaires",
              Icons.local_fire_department_outlined,
              () {},
            ),

            buildSectionHeader(context, "Fin d'année", Icons.celebration_outlined, () {}),
          ],
        ),
      ),
    );
  }
}
