import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/navigation/app_router.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';

class EventDetailPage extends StatelessWidget {
  final String eventId;

  const EventDetailPage({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails de l\'événement'),
        backgroundColor: Colors.transparent,
      ),
      body: Query$GetEvent$Widget(
        options: Options$Query$GetEvent(
          onError: (error) {
            GraphQLService.operationExceptionHandler(context, error);
          },
          variables: Variables$Query$GetEvent(id: eventId),
        ),
        builder: (result, {refetch, fetchMore}) {
          Query$GetEvent? data;

          if (result.data != null) {
            data = Query$GetEvent.fromJson(result.data!);
          }

          return Column(
            children: result.isLoading
                ? [
                    Expanded(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [CircularProgressIndicator()],
                        ),
                      ),
                    ),
                  ]
                : data?.event == null
                ? [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsGeometry.fromLTRB(16, 50, 16, 50),
                        child: Center(
                          child: Column(
                            spacing: 10,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Erreur lors de la recuperation des données."),
                              ElevatedButton.icon(
                                onPressed: refetch,
                                label: Text("Reessayer"),
                                icon: Icon(Icons.refresh),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]
                : [
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
                          // child: const Icon(Icons.event, size: 100, color: Colors.grey),
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
                                colors: [Colors.transparent, Theme.of(context).colorScheme.surface],
                                stops: [0.4, 0.95],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          right: 12,
                          child: IconButton(
                            onPressed: () {
                              // TODO: Implémenter le partage
                              ScaffoldMessenger.of(
                                context,
                              ).showSnackBar(const SnackBar(content: Text('Partager')));
                            },
                            icon: const Icon(Icons.share),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                            child: Text(
                              data.event!.title,
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsetsGeometry.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          const Text(
                            'Description de l\'événement...',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 16),

                          // Informations de l'événement
                          _buildInfoRow(Icons.calendar_today, 'Date', '15 Décembre 2024'),
                          _buildInfoRow(Icons.access_time, 'Heure', '18:00'),
                          _buildInfoRow(Icons.location_on, 'Lieu', 'Port-au-Prince, Haïti'),
                          _buildInfoRow(Icons.person, 'Organisateur', 'Nom de l\'organisateur'),

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
          );
        },
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
