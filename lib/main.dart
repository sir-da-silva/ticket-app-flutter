import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'pages/home_page.dart';
import 'pages/map_page.dart';
import 'pages/management_page.dart';
import 'pages/profile_page.dart';
import 'services/graphql_service.dart';
import 'navigation/app_router.dart';
import 'navigation/route_names.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GraphQL client
  await initHiveForFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: ValueNotifier(GraphQLService.client),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: const MainNavigationPage(),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: RouteNames.login,
      ),
    );
  }
}

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
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: SizedBox(
        width: 44,
        height: 44,
        // pour “surélever” un peu plus, tu peux ajuster margin ou position
        child: FloatingActionButton(
          onPressed: () {
            // Action quand on tape le bouton central
            AppRouter.pushNamed(context, RouteNames.eventDetail);
          },
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
                    color: _currentIndex == 0
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey,
                    onTap: () => setState(() {
                      _currentIndex = 0;
                    }),
                  ),
                  _NavItem(
                    icon: Icons.location_on_rounded,
                    label: "Carte",
                    selected: _currentIndex == 1,
                    color: _currentIndex == 1
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey,
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
                    color: _currentIndex == 2
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey,
                    onTap: () => setState(() {
                      _currentIndex = 2;
                    }),
                  ),
                  _NavItem(
                    icon: Icons.person,
                    label: "Moi",
                    selected: _currentIndex == 3,
                    color: _currentIndex == 3
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey,
                    onTap: () => setState(() {
                      _currentIndex = 3;
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),

        // type: BottomNavigationBarType.fixed,
        // currentIndex: _currentIndex,
        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //   });
        // },
        // selectedItemColor: Theme.of(context).colorScheme.primary,
        // unselectedItemColor: Colors.grey,
        // items: const [
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.home_rounded),
        //     label: 'Acceuil',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.location_on_rounded),
        //     label: 'Carte',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.assignment),
        //     label: 'Gestion',
        //   ),
        //   BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Moi'),
        // ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final Color color;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.color,
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
            Icon(icon, color: color, size: 24),
            SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: selected ? FontWeight.bold : FontWeight.w400,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
