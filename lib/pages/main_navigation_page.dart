import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/pages/events/select_event_modal.dart';
import 'package:my_first_flutter_app/pages/home_page.dart';
import 'package:my_first_flutter_app/pages/management_page.dart';
import 'package:my_first_flutter_app/pages/map_page.dart';
import 'package:my_first_flutter_app/pages/profile_page.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:provider/provider.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const MapPage(),
    const ManagementPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();

    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: SizedBox(
        width: 44,
        height: 44,
        // pour “surélever” un peu plus, tu peux ajuster margin ou position
        child: FloatingActionButton(
          onPressed: () => auth.isAuthenticated
              ? selectEvent(context, (eventId) {
                  Navigator.pushNamed(context, RouteNames.checkTicket, arguments: eventId);
                })
              : setState(() {
                  _currentIndex = 2;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Vous devez d'abbord vous connecter à votre compte."),
                      behavior: SnackBarBehavior.floating,
                      showCloseIcon: true,
                    ),
                  );
                }),
          shape: CircleBorder(),
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: Icon(Icons.crop_free_rounded, color: Colors.white, size: 24),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
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
                    selected: _currentIndex == 0,
                    onTap: () => setState(() {
                      _currentIndex = 0;
                    }),
                  ),
                  _NavItem(
                    icon: Icons.location_on_rounded,
                    label: "Carte",
                    selected: _currentIndex == 1,
                    onTap: () => setState(() {
                      _currentIndex = 1;
                    }),
                  ),
                ],
              ),
              Row(
                spacing: 4,
                children: [
                  _NavItem(
                    icon: Icons.assignment,
                    label: "Gestion",
                    selected: _currentIndex == 2,
                    onTap: () => setState(() {
                      _currentIndex = 2;
                    }),
                  ),
                  _NavItem(
                    icon: Icons.person,
                    label: "Moi",
                    selected: _currentIndex == 3,
                    onTap: () => setState(() {
                      _currentIndex = 3;
                    }),
                  ),
                ],
              ),
            ],
          ),
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
              color: selected ? Theme.of(context).colorScheme.primary : Colors.grey,
              size: 24,
            ),
            SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: selected ? FontWeight.bold : FontWeight.w400,
                color: selected ? Theme.of(context).colorScheme.primary : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
