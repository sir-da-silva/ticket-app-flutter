import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.activeScreen});

  final String activeScreen;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8, // marge autour de l’encoche pour le bouton
      elevation: 5,
      color: Colors.white,

      child: SizedBox(
        height: 32,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 4,
              children: [
                _NavItem(
                  icon: Icons.home_rounded,
                  label: "Acceuil",
                  selected: activeScreen == RouteNames.home,
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, RouteNames.home),
                ),
                _NavItem(
                  icon: Icons.location_on_rounded,
                  label: "Carte",
                  selected: activeScreen == RouteNames.map,
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, RouteNames.map),
                ),
              ],
            ),
            Row(
              spacing: 4,
              children: [
                _NavItem(
                  icon: Icons.assignment,
                  label: "Gestion",
                  selected: activeScreen == RouteNames.management,
                  onTap: () => Navigator.pushReplacementNamed(
                    context,
                    RouteNames.management,
                  ),
                ),
                _NavItem(
                  icon: Icons.person,
                  label: "Moi",
                  selected: activeScreen == RouteNames.profile,
                  onTap: () => Navigator.pushReplacementNamed(
                    context,
                    RouteNames.profile,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        width: 70,
        padding: EdgeInsets.symmetric(vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: selected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
              size: 24,
            ),
            SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: selected ? FontWeight.bold : FontWeight.w400,
                color: selected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 44,
      height: 44,
      // pour “surélever” un peu plus, tu peux ajuster margin ou position
      child: FloatingActionButton(
        onPressed: () {
          // Action quand on tape le bouton central
          true
              ? Navigator.pushNamed(
                  context,
                  RouteNames.login,
                  arguments: {"routeOrigin": RouteNames.login},
                )
              : Navigator.pushNamed(context, "/scan_code");
        },
        shape: CircleBorder(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.crop_free_rounded, color: Colors.white, size: 24),
      ),
    );
  }
}
