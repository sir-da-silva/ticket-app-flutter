import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/build_section_header.dart';
import 'package:my_first_flutter_app/navigation/app_router.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Données du compte actif
  final Map<String, dynamic> _compteActif = {
    'id': 'active',
    'titre': 'Ajouter une actualité',
    'image': 'https://picsum.photos/200/300?random=active',
    'utilisateur': 'Mon Compte',
    'date': 'Maintenant',
    'seen': false,
    'isActive': true,
  };

  // Données des actualités
  final List<Map<String, dynamic>> _actualites = [
    {
      'id': '1',
      'titre': 'Nouvelle fonctionnalité disponible',
      'image': 'https://picsum.photos/200/300?random=1',
      'utilisateur': 'Marie Dubois',
      'date': 'Il y a 2h',
      'seen': false,
    },
    {
      'id': '2',
      'titre': 'Mise à jour importante',
      'image': 'https://picsum.photos/200/300?random=2',
      'utilisateur': 'Jean Martin',
      'date': 'Il y a 4h',
      'seen': true,
    },
    {
      'id': '3',
      'titre': 'Événement spécial ce weekend',
      'image': 'https://picsum.photos/200/300?random=3',
      'utilisateur': 'Sophie Laurent',
      'date': 'Il y a 6h',
      'seen': false,
    },
    {
      'id': '4',
      'titre': 'Nouveaux partenaires',
      'image': 'https://picsum.photos/200/300?random=4',
      'utilisateur': 'Pierre Durand',
      'date': 'Il y a 8h',
      'seen': true,
    },
    {
      'id': '5',
      'titre': 'Maintenance programmée',
      'image': 'https://picsum.photos/200/300?random=5',
      'utilisateur': 'Admin System',
      'date': 'Il y a 12h',
      'seen': false,
    },
    {
      'id': '1',
      'titre': 'Nouvelle fonctionnalité disponible',
      'image': 'https://picsum.photos/200/300?random=6',
      'utilisateur': 'Marie Dubois',
      'date': 'Il y a 2h',
      'seen': false,
    },
    {
      'id': '2',
      'titre': 'Mise à jour importante',
      'image': 'https://picsum.photos/200/300?random=7',
      'utilisateur': 'Jean Martin',
      'date': 'Il y a 4h',
      'seen': true,
    },
    {
      'id': '3',
      'titre': 'Événement spécial ce weekend',
      'image': 'https://picsum.photos/200/300?random=8',
      'utilisateur': 'Sophie Laurent',
      'date': 'Il y a 6h',
      'seen': false,
    },
    {
      'id': '4',
      'titre': 'Nouveaux partenaires',
      'image': 'https://picsum.photos/200/300?random=9',
      'utilisateur': 'Pierre Durand',
      'date': 'Il y a 8h',
      'seen': true,
    },
    {
      'id': '5',
      'titre': 'Maintenance programmée',
      'image': 'https://picsum.photos/200/300?random=10',
      'utilisateur': 'Admin System',
      'date': 'Il y a 12h',
      'seen': false,
    },
  ];

  void _onActualitePressed(Map<String, dynamic> actualite) {
    // Marquer comme vu
    setState(() {
      actualite['seen'] = true;
    });

    // Naviguer vers la page de détail de l'événement
    AppRouter.pushNamed(context, '/event/detail', arguments: actualite['id']);
  }

  void _onActiveAccountPressed() {
    // Naviguer vers la page de création d'événement
    AppRouter.pushNamed(context, '/event/create');
  }

  Widget _buildActiveAccountCard() {
    return GestureDetector(
      onTap: _onActiveAccountPressed,
      child: Container(
        width: 100,
        height: 140,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              // Image de fond
              Positioned.fill(
                child: Image.network(
                  _compteActif['image'],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.1),
                      child: Icon(
                        Icons.add_photo_alternate,
                        color: Theme.of(context).colorScheme.primary,
                        size: 32,
                      ),
                    );
                  },
                ),
              ),

              // Overlay gradient spécial pour le compte actif
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.25),
                        Colors.black.withOpacity(0.5),
                      ],
                      stops: const [0.2, 0.6, 1.0],
                    ),
                  ),
                ),
              ),

              // Icône "plus" pour indiquer l'ajout
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.add,
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: 16,
                  ),
                ),
              ),

              // Contenu textuel
              Positioned(
                bottom: -2,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Nom de l'utilisateur avec style spécial
                      Text(
                        _compteActif['utilisateur'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActualiteCard(Map<String, dynamic> actualite, int index) {
    final isSeen = actualite['seen'] as bool;

    return GestureDetector(
      onTap: () => _onActualitePressed(actualite),
      child: Container(
        width: 100,
        height: 140,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              // Image de fond
              Positioned.fill(
                child: Image.network(
                  actualite['image'],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Theme.of(context).colorScheme.surfaceDim,
                      child: Icon(
                        Icons.image_not_supported,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withOpacity(0.5),
                      ),
                    );
                  },
                ),
              ),

              // Overlay gradient pour la lisibilité du texte
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.5),
                      ],
                      stops: const [0.4, 1.0],
                    ),
                  ),
                ),
              ),

              // Indicateur "nouveau" pour les actualités non vues
              if (!isSeen)
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

              // Contenu textuel
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Nom de l'utilisateur
                      Text(
                        actualite['utilisateur'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('My First Flutter App'),
        title: SizedBox(
          height: 24,
          child: Image.asset("assets/images/logoipsum-311.png"),
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Section Actualités avec liste horizontale
            SizedBox(
              height: 156,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                itemCount: _actualites.length + 1, // +1 pour le compte actif
                itemBuilder: (context, index) {
                  // Premier élément: compte actif
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: _buildActiveAccountCard(),
                    );
                  }

                  // Autres éléments: actualités normales
                  final actualite = _actualites[index - 1];
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: _buildActualiteCard(actualite, index - 1),
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

            buildSectionHeader(
              context,
              "Fin d'année",
              Icons.celebration_outlined,
              () {},
            ),
          ],
        ),
      ),
    );
  }
}
