import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/custom_bottom_navigation_bar.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: const EdgeInsets.only(right: 16),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, RouteNames.search),
            icon: const Icon(Icons.search_rounded, size: 28),
            tooltip: 'Rechercher',
          ),
          const SizedBox(width: 4),
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, RouteNames.notifications),
            icon: const Icon(Icons.notifications_outlined, size: 28),
            tooltip: 'Notifications',
          ),
        ],
      ),
      floatingActionButton: CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(
        activeScreen: RouteNames.map,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on_rounded, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              "Carte d'activités",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Localiser les activités...',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
