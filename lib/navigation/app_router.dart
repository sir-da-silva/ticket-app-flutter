import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/pages/auth/login_page.dart';
import 'package:my_first_flutter_app/pages/auth/otp_register_page.dart';
import 'package:my_first_flutter_app/pages/auth/register_page.dart';
import 'package:my_first_flutter_app/pages/home_page.dart';
import 'package:my_first_flutter_app/pages/map_page.dart';
import 'package:my_first_flutter_app/pages/management_page.dart';
import 'package:my_first_flutter_app/pages/profile_page.dart';
import 'package:my_first_flutter_app/pages/events/event_detail_page.dart';
import 'package:my_first_flutter_app/pages/events/create_event_page.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );

      case RouteNames.map:
        return MaterialPageRoute(
          builder: (_) => const MapPage(),
          settings: settings,
        );

      case RouteNames.management:
        return MaterialPageRoute(
          builder: (_) => const ManagementPage(),
          settings: settings,
        );

      case RouteNames.profile:
        return MaterialPageRoute(
          builder: (_) => const ProfilePage(),
          settings: settings,
        );

      case RouteNames.login:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
          settings: settings,
        );

      case RouteNames.register:
        return MaterialPageRoute(
          builder: (_) => const RegisterPage(),
          settings: settings,
        );

      case RouteNames.optRegister:
        return MaterialPageRoute(
          builder: (_) => const OtpRegisterPage(),
          settings: settings,
        );

      case RouteNames.eventDetail:
        final eventId = settings.arguments as String?;
        return MaterialPageRoute(
          builder: (_) => EventDetailPage(eventId: eventId),
          settings: settings,
        );

      case RouteNames.createEvent:
        return MaterialPageRoute(
          builder: (_) => const CreateEventPage(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Page non trouvée: ${settings.name}')),
          ),
          settings: settings,
        );
    }
  }

  // Méthodes utilitaires pour la navigation
  static Future<T?> pushNamed<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(context).pushNamed<T>(routeName, arguments: arguments);
  }

  static Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
    bool Function(Route<dynamic>)? predicate,
  }) {
    return Navigator.of(context).pushNamedAndRemoveUntil<T>(
      routeName,
      predicate ?? (route) => false,
      arguments: arguments,
    );
  }

  static void pop<T extends Object?>(BuildContext context, [T? result]) {
    Navigator.of(context).pop<T>(result);
  }

  static void popUntil(BuildContext context, String routeName) {
    Navigator.of(context).popUntil(ModalRoute.withName(routeName));
  }
}
