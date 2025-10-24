# Guide de Navigation - Application Flutter

## 📁 Structure des Pages

### Pages Principales (Tab Navigation)

- `lib/pages/home_page.dart` - Page d'accueil
- `lib/pages/map_page.dart` - Page carte
- `lib/pages/management_page.dart` - Page gestion
- `lib/pages/profile_page.dart` - Page profil

### Pages d'Événements

- `lib/pages/events/event_detail_page.dart` - Détails d'un événement
- `lib/pages/events/create_event_page.dart` - Créer un événement
- `lib/pages/events/edit_event_page.dart` - Modifier un événement
- `lib/pages/events/events_list_page.dart` - Liste des événements

### Pages de Tickets

- `lib/pages/tickets/ticket_detail_page.dart` - Détails d'un ticket
- `lib/pages/tickets/create_ticket_page.dart` - Créer un ticket
- `lib/pages/tickets/tickets_list_page.dart` - Liste des tickets

### Pages d'Authentification

- `lib/pages/auth/login_page.dart` - Connexion
- `lib/pages/auth/register_page.dart` - Inscription
- `lib/pages/auth/forgot_password_page.dart` - Mot de passe oublié

### Pages de Paramètres

- `lib/pages/settings/settings_page.dart` - Paramètres généraux
- `lib/pages/settings/profile_edit_page.dart` - Modifier le profil
- `lib/pages/settings/notifications_settings_page.dart` - Paramètres notifications

## 🚀 Comment Naviguer

### 1. Navigation Simple

```dart
// Naviguer vers une nouvelle page
AppRouter.pushNamed(context, RouteNames.eventDetail);

// Naviguer avec des arguments
AppRouter.pushNamed(context, RouteNames.eventDetail, arguments: 'event123');
```

### 2. Navigation avec Retour

```dart
// Retourner à la page précédente
AppRouter.pop(context);

// Retourner avec un résultat
AppRouter.pop(context, 'result');
```

### 3. Navigation avec Remplacement

```dart
// Remplacer la page actuelle
AppRouter.pushNamedAndRemoveUntil(context, RouteNames.home);
```

### 4. Navigation Conditionnelle

```dart
// Naviguer selon une condition
if (isLoggedIn) {
  AppRouter.pushNamed(context, RouteNames.home);
} else {
  AppRouter.pushNamed(context, RouteNames.login);
}
```

## 📝 Exemple d'Utilisation

### Dans un Widget

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Naviguer vers la page de détail de l'événement
        AppRouter.pushNamed(context, RouteNames.eventDetail, arguments: 'event123');
      },
      child: Text('Voir détails'),
    );
  }
}
```

### Dans une AppBar

```dart
AppBar(
  title: Text('Ma Page'),
  actions: [
    IconButton(
      onPressed: () {
        AppRouter.pushNamed(context, RouteNames.settings);
      },
      icon: Icon(Icons.settings),
    ),
  ],
)
```

## 🔧 Ajouter une Nouvelle Page

### 1. Créer le fichier de la page

```dart
// lib/pages/ma_nouvelle_page.dart
class MaNouvellePage extends StatelessWidget {
  const MaNouvellePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ma Nouvelle Page')),
      body: Center(child: Text('Contenu de la page')),
    );
  }
}
```

### 2. Ajouter la route dans RouteNames

```dart
// lib/navigation/route_names.dart
class RouteNames {
  // ... autres routes
  static const String maNouvellePage = '/ma-nouvelle-page';
}
```

### 3. Ajouter la route dans AppRouter

```dart
// lib/navigation/app_router.dart
import 'package:my_first_flutter_app/pages/ma_nouvelle_page.dart';

// Dans generateRoute()
case RouteNames.maNouvellePage:
  return MaterialPageRoute(
    builder: (_) => const MaNouvellePage(),
    settings: settings,
  );
```

### 4. Utiliser la navigation

```dart
AppRouter.pushNamed(context, RouteNames.maNouvellePage);
```

## 🎯 Bonnes Pratiques

1. **Nommage cohérent** : Utilisez des noms de routes descriptifs
2. **Arguments typés** : Passez des arguments typés quand nécessaire
3. **Gestion d'erreurs** : Toujours gérer les cas où la route n'existe pas
4. **Performance** : Évitez de naviguer trop fréquemment
5. **UX** : Utilisez des transitions appropriées selon le contexte

## 📱 Types de Navigation

### Navigation Tab (Bottom Navigation)

- Utilisée pour les pages principales
- Pas de pile de navigation
- Navigation directe entre les tabs

### Navigation Stack (Pile)

- Utilisée pour les pages secondaires
- Permet le retour avec le bouton back
- Pile de navigation gérée automatiquement

### Navigation Modal

- Pour les formulaires, paramètres
- Peut être fermée avec un swipe ou un bouton
- Ne remplace pas la page précédente
