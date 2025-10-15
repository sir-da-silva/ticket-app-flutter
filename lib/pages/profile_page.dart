import 'package:flutter/material.dart';
import '../components/activity_card.dart';
import '../components/ticket_card.dart';
import '../components/build_section_header.dart';

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

  IconData _getActivityIcon(int index) {
    final icons = [
      Icons.work,
      Icons.school,
      Icons.sports_soccer,
      Icons.music_note,
      Icons.restaurant,
      Icons.shopping_cart,
      Icons.movie,
      Icons.book,
      Icons.fitness_center,
      Icons.travel_explore,
    ];
    return icons[index % icons.length];
  }

  Color _getActivityColor(int index) {
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.red,
      Colors.teal,
      Colors.pink,
      Colors.indigo,
      Colors.amber,
      Colors.cyan,
    ];
    return colors[index % colors.length];
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
        title: const Text('Profil'),
        actionsPadding: const EdgeInsets.only(right: 16),
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
                          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=150&fit=crop&crop=face',
                        ),
                        onBackgroundImageError: (exception, stackTrace) {
                          // Fallback to icon if image fails to load
                        },
                      ),
                    ),
                    const SizedBox(height: 20),

                    // User Name
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
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
                          Icons.chat,
                          'WhatsApp',
                          const Color(0xFF25D366),
                        ),
                        const SizedBox(width: 16),
                        _buildSocialButton(
                          context,
                          Icons.facebook,
                          'Facebook',
                          const Color(0xFF1877F2),
                        ),
                        const SizedBox(width: 16),
                        _buildSocialButton(
                          context,
                          Icons.camera_alt,
                          'Instagram',
                          const Color(0xFFE4405F),
                        ),
                        const SizedBox(width: 16),
                        _buildSocialButton(
                          context,
                          Icons.music_note,
                          'TikTok',
                          const Color(0xFF000000),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
                      child: ActivityCard(
                        title: 'Activité ${index + 1}',
                        subtitle: 'Description de l\'activité ${index + 1}',
                        time: '${index + 1}h',
                        icon: _getActivityIcon(index),
                        iconColor: _getActivityColor(index),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 32),

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
