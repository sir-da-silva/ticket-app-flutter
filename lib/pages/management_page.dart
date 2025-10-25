import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/custom_bottom_navigation_bar.dart';
import 'package:my_first_flutter_app/components/event.dart';
import 'package:my_first_flutter_app/components/build_section_header.dart';
import 'package:my_first_flutter_app/components/login_required.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class ManagementPage extends StatelessWidget {
  const ManagementPage({super.key});

  Event _getEvents(index) {
    List<Event> events = [
      Event(
        title: "Festival de Musique Imballin",
        subtitle: "3 jours de vibes et de performances inoubliables",
        time: "18:00",
        imageUrl: "https://example.com/images/music_festival.jpg",
        eventName: "Imballin Fest 2025",
        eventDate: "2025-11-12",
        location: "Cap-Haïtien, Haïti",
        category: "Musique",
        owner: "Imballin Production",
        ticketsSold: 480,
      ),
      Event(
        title: "Salon de l’Innovation Technologique",
        subtitle:
            "Découvre les nouvelles tendances tech et startups haïtiennes",
        time: "09:00",
        imageUrl: "https://example.com/images/tech_expo.jpg",
        eventName: "Haiti Tech Expo 2025",
        eventDate: "2025-12-02",
        location: "Port-au-Prince, Haïti",
        category: "Technologie",
        owner: "TechHaiti",
        ticketsSold: 325,
      ),
      Event(
        title: "Soirée Cinéma Plein Air",
        subtitle: "Projection de films haïtiens sous les étoiles",
        time: "19:30",
        imageUrl: "https://example.com/images/open_air_cinema.jpg",
        eventName: "Ciné Lakay",
        eventDate: "2025-10-27",
        location: "Jacmel, Haïti",
        category: "Cinéma",
        owner: "CinéKreyo",
        ticketsSold: 210,
      ),
      Event(
        title: "Compétition de Danse Urbaine",
        subtitle: "Les meilleurs danseurs du pays s’affrontent",
        time: "16:00",
        imageUrl: "https://example.com/images/dance_battle.jpg",
        eventName: "Move Battle 2025",
        eventDate: "2025-11-20",
        location: "Gonaïves, Haïti",
        category: "Danse",
        owner: "UrbanVibes",
        ticketsSold: 150,
      ),
      Event(
        title: "Exposition d’Art Contemporain",
        subtitle: "Les artistes émergents à l’honneur",
        time: "10:00",
        imageUrl: "https://example.com/images/art_expo.jpg",
        eventName: "Art Vision 2025",
        eventDate: "2025-11-05",
        location: "Pétion-Ville, Haïti",
        category: "Art",
        owner: "Haïti Création",
        ticketsSold: 275,
      ),
      Event(
        title: "Tournoi de Football des Jeunes",
        subtitle: "Un événement sportif pour la nouvelle génération",
        time: "13:00",
        imageUrl: "https://example.com/images/football_tournament.jpg",
        eventName: "Goal Future Cup",
        eventDate: "2025-12-10",
        location: "Les Cayes, Haïti",
        category: "Sport",
        owner: "Fédération Jeunesse Sportive",
        ticketsSold: 620,
      ),
      Event(
        title: "Conférence Leadership et Entrepreneuriat",
        subtitle: "Apprends à transformer tes idées en entreprises solides",
        time: "08:30",
        imageUrl: "https://example.com/images/leadership_conference.jpg",
        eventName: "LeadUp 2025",
        eventDate: "2025-11-28",
        location: "Port-au-Prince, Haïti",
        category: "Éducation",
        owner: "BizHaiti",
        ticketsSold: 410,
      ),
      Event(
        title: "Festival Gastronomique Haïtien",
        subtitle: "Une explosion de saveurs locales et internationales",
        time: "12:00",
        imageUrl: "https://example.com/images/food_festival.jpg",
        eventName: "Goût Lakay 2025",
        eventDate: "2025-11-15",
        location: "Cap-Haïtien, Haïti",
        category: "Gastronomie",
        owner: "Saveur Créole",
        ticketsSold: 530,
      ),
      Event(
        title: "Salon du Livre et de la Culture",
        subtitle: "Rencontre avec les auteurs et penseurs haïtiens",
        time: "10:00",
        imageUrl: "https://example.com/images/book_fair.jpg",
        eventName: "Livres & Idées 2025",
        eventDate: "2025-12-03",
        location: "Port-de-Paix, Haïti",
        category: "Culture",
        owner: "Éditions Lakay",
        ticketsSold: 340,
      ),
      Event(
        title: "Soirée Élégance & Mode Imballin",
        subtitle: "Défilé de mode haut de gamme par la marque Imballin",
        time: "20:00",
        imageUrl: "https://example.com/images/imballin_fashion.jpg",
        eventName: "Imballin Fashion Night",
        eventDate: "2025-12-22",
        location: "Port-au-Prince, Haïti",
        category: "Mode",
        owner: "Imballin",
        ticketsSold: 700,
      ),
    ];
    return events[index];
  }

  bool isAuthenticated() {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Createur'),
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
        activeScreen: RouteNames.management,
      ),
      body: !isAuthenticated()
          ? LoginRequired(
              icon: Icons.assignment,
              title: "Gestion",
              message: "Gérez vos activités et votre balance !",
              routeOrigin: RouteNames.management,
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
                          Theme.of(
                            context,
                          ).colorScheme.primary.withOpacity(0.8),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(
                            context,
                          ).colorScheme.primary.withOpacity(0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
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
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    "25,000",
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
                                      color: Colors.white.withOpacity(0.9),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                          Theme.of(
                            context,
                          ).colorScheme.primary.withOpacity(0.5),
                          Theme.of(
                            context,
                          ).colorScheme.primary.withOpacity(0.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(
                            context,
                          ).colorScheme.shadow.withOpacity(0.1),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      children: [
                        _buildAction(
                          context,
                          Icons.add,
                          "Nouvelle Activité",
                          Colors.blue,
                          () {},
                        ),
                        _buildAction(
                          context,
                          Icons.receipt_long,
                          "Generer un Ticket",
                          Colors.green,
                          () {},
                        ),
                        _buildAction(
                          context,
                          Icons.edit_calendar_outlined,
                          "Modifier un activite",
                          Colors.orange,
                          () {},
                        ),
                        _buildAction(
                          context,
                          Icons.confirmation_number,
                          "Modifier un ticket",
                          Colors.purple,
                          () {},
                        ),
                        _buildAction(
                          context,
                          Icons.arrow_downward_rounded,
                          "Faire un Depot",
                          Colors.teal,
                          () {},
                        ),
                        _buildAction(
                          context,
                          Icons.arrow_upward_rounded,
                          "Faire un Retrait",
                          Colors.red,
                          () {},
                        ),
                      ],
                    ),
                  ),
                  // Mes Activités Section
                  buildSectionHeader(
                    context,
                    'Mes Activités',
                    Icons.calendar_month_outlined,
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Voir toutes les activités'),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: SizedBox(width: 300, child: _getEvents(index)),
                        );
                      },
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
        // border: Border.all(color: color.withOpacity(0.2), width: 1),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
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
