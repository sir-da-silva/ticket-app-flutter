import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/navigation/app_router.dart';

Widget actualiteCard(BuildContext context, {final actuality, bool isCurrentUser = false}) {
  return GestureDetector(
    onTap: () {
      if (actuality?.id != null) {
        AppRouter.pushNamed(context, '/actualities', arguments: {"userId": actuality.id});
      } else if (isCurrentUser) {
        AppRouter.pushNamed(context, '/createActuality');
      }
    },
    child: Container(
      width: 100,
      height: 140,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: isCurrentUser
            ? Border.all(color: Theme.of(context).colorScheme.primary, width: 2)
            : null,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.1),
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
                actuality?.picture ?? "",
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Theme.of(context).colorScheme.surfaceDim,
                    child: isCurrentUser && actuality == null
                        ? Icon(
                            Icons.add_photo_alternate,
                            color: Theme.of(context).colorScheme.primary,
                            size: 32,
                          )
                        : Icon(
                            Icons.image,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
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
                    colors: [Colors.transparent, Colors.black.withValues(alpha: 0.5)],
                    stops: const [0.4, 1.0],
                  ),
                ),
              ),
            ),

            if (isCurrentUser)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.3),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      AppRouter.pushNamed(context, '/createActuality');
                    },
                    child: Icon(
                      Icons.add,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 16,
                    ),
                  ),
                ),
              )
            else
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
                    Text(
                      isCurrentUser ? "Mes Actualités" : actuality.user.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
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
