import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutter_app/components/event.dart';
import 'package:my_first_flutter_app/components/build_section_header.dart';
import 'package:my_first_flutter_app/components/ticket.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  void _onEditPressed(BuildContext context) {
    // TODO: Implement edit functionality
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Modifier')));
  }

  void _onSettingsPressed(BuildContext context) {
    // TODO: Implement settings functionality
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Paramètres')));
  }

  Event _getEvents(index) {
    List<Event> events = [
      Event(
        title: "Festival de Musique Imballin",
        subtitle: "3 jours de vibes et de performances inoubliables",
        time: "18:00",
        imageUrl: "https://picsum.photos/200/300?random=20",
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
        imageUrl: "https://picsum.photos/200/300?random=21",
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
        imageUrl: "https://picsum.photos/200/300?random=22",
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
        imageUrl: "https://picsum.photos/200/300?random=23",
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
        imageUrl: "https://picsum.photos/200/300?random=24",
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
        imageUrl: "https://picsum.photos/200/300?random=25",
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
        imageUrl: "https://picsum.photos/200/300?random=26",
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
        imageUrl: "https://picsum.photos/200/300?random=27",
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
        imageUrl: "https://picsum.photos/200/300?random=28",
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
        imageUrl: "https://picsum.photos/200/300?random=29",
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

  String _getTicketStatus(int index) {
    final statuses = ['Ouvert', 'En cours', 'Fermé', 'En attente', 'Résolu'];
    return statuses[index % statuses.length];
  }

  Color _getTicketStatusColor(int index) {
    final statuses = ['Ouvert', 'En cours', 'Fermé', 'En attente', 'Résolu'];
    final status = statuses[index % statuses.length];

    switch (status) {
      case 'Ouvert':
        return Colors.blue;
      case 'En cours':
        return Colors.orange;
      case 'Fermé':
        return Colors.red;
      case 'En attente':
        return Colors.yellow;
      case 'Résolu':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  Widget _buildSocialButton(
    BuildContext context,
    IconData icon,
    String tooltip,
    Color color,
  ) {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Compte'),
        actionsPadding: const EdgeInsets.only(right: 16),
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        actions: [
          IconButton(
            onPressed: () => _onEditPressed(context),
            icon: const Icon(Icons.edit_outlined, size: 28),
            tooltip: 'Modifier le profil',
          ),
          const SizedBox(width: 4),
          IconButton(
            onPressed: () => _onSettingsPressed(context),
            icon: const Icon(Icons.settings_outlined, size: 28),
            tooltip: 'Paramètres',
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header Section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    Theme.of(context).colorScheme.secondary.withOpacity(0.05),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    // Profile Avatar with enhanced styling
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.3),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        backgroundImage: const NetworkImage(
                          'https://avatar.iran.liara.run/public/21',
                        ),
                        onBackgroundImageError: (exception, stackTrace) {
                          // Fallback to icon if image fails to load
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 8,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        Icon(
                          Icons.verified_rounded,
                          size: 20,
                          color: Colors.green,
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
                        'john.doe@example.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withOpacity(0.7),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Social Links
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialButton(
                          context,
                          FontAwesomeIcons.whatsapp,
                          'WhatsApp',
                          const Color(0xFF25D366),
                        ),
                        const SizedBox(width: 16),
                        _buildSocialButton(
                          context,
                          FontAwesomeIcons.facebook,
                          'Facebook',
                          const Color(0xFF1877F2),
                        ),
                        const SizedBox(width: 16),
                        _buildSocialButton(
                          context,
                          FontAwesomeIcons.instagram,
                          'Instagram',
                          const Color(0xFFE4405F),
                        ),
                        const SizedBox(width: 16),
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
              ),
            ),
            Divider(height: 0),
            // Activités Suivies Section
            buildSectionHeader(
              context,
              'Activités Suivies',
              Icons.calendar_month_outlined,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Voir toutes les activités')),
                );
              },
            ),
            SizedBox(
              height: 300,
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
            SizedBox(height: 15),
            // Tickets Achetés Section
            buildSectionHeader(
              context,
              'Tickets Achetés',
              Icons.confirmation_number_outlined,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Voir tous les tickets')),
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
                    child: SizedBox(
                      width: 300,
                      child: TicketCard(
                        ticketNumber: '${1000 + index}',
                        title: 'Ticket ${index + 1}',
                        status: _getTicketStatus(index),
                        date:
                            '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                        statusColor: _getTicketStatusColor(index),
                      ),
                    ),
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
