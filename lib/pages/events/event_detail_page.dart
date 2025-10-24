import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/navigation/app_router.dart';

class EventDetailPage extends StatelessWidget {
  final String? eventId;

  const EventDetailPage({super.key, this.eventId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails de l\'événement'),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Implémenter le partage
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Partager')));
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image de l'événement
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Icon(Icons.event, size: 100, color: Colors.grey),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Titre de l\'événement',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Description de l\'événement...',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),

                  // Informations de l'événement
                  _buildInfoRow(
                    Icons.calendar_today,
                    'Date',
                    '15 Décembre 2024',
                  ),
                  _buildInfoRow(Icons.access_time, 'Heure', '18:00'),
                  _buildInfoRow(
                    Icons.location_on,
                    'Lieu',
                    'Port-au-Prince, Haïti',
                  ),
                  _buildInfoRow(
                    Icons.person,
                    'Organisateur',
                    'Nom de l\'organisateur',
                  ),

                  const SizedBox(height: 24),

                  // Bouton d'action
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        AppRouter.pushNamed(context, '/ticket/create');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(
                        'Acheter un ticket',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[600]),
          const SizedBox(width: 12),
          Text('$label: ', style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(value),
        ],
      ),
    );
  }
}
