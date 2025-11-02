import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/pages/auth/forgot_password.dart';
import 'package:my_first_flutter_app/pages/auth/login_page.dart';
import 'package:my_first_flutter_app/pages/auth/otp_page.dart';
import 'package:my_first_flutter_app/pages/auth/register_page.dart';
import 'package:my_first_flutter_app/pages/main_navigation_page.dart';
import 'package:my_first_flutter_app/pages/events/event_detail_page.dart';
import 'package:my_first_flutter_app/pages/events/create_event_page.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/pages/tickets/scan_ticket_page.dart';
import 'package:my_first_flutter_app/pages/utilities/notification_page.dart';
import 'package:my_first_flutter_app/pages/utilities/search_page.dart';
import 'package:my_first_flutter_app/pages/utilities/settings_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Pages de demmarage
      case RouteNames.main:
        return MaterialPageRoute(builder: (_) => const MainNavigationPage(), settings: settings);

      // Authentification pages
      case RouteNames.login:
        return MaterialPageRoute(builder: (_) => const LoginPage(), settings: settings);
      case RouteNames.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPage(), settings: settings);
      case RouteNames.register:
        return MaterialPageRoute(builder: (_) => const RegisterPage(), settings: settings);
      case RouteNames.optPage:
        return MaterialPageRoute(builder: (_) => const OtpPage(), settings: settings);

      // Utility pages
      case RouteNames.notifications:
        return MaterialPageRoute(builder: (_) => const NotificationPage(), settings: settings);
      case RouteNames.settings:
        return MaterialPageRoute(builder: (_) => const SettingsPage(), settings: settings);
      case RouteNames.search:
        return MaterialPageRoute(builder: (_) => const SearchPage(), settings: settings);

      // Event pages
      case RouteNames.eventDetail:
        final eventId = settings.arguments.toString();
        return MaterialPageRoute(
          builder: (_) => EventDetailPage(eventId: eventId),
          settings: settings,
        );
      case RouteNames.createEvent:
        return MaterialPageRoute(builder: (_) => const CreateEventPage(), settings: settings);

      // Ticket pages
      case RouteNames.scanTicket:
        return MaterialPageRoute(builder: (_) => const ScanTicketPage(), settings: settings);

      // 404 Page
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text('Page non trouvée: ${settings.name}'))),
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
    return Navigator.of(
      context,
    ).pushNamedAndRemoveUntil<T>(routeName, predicate ?? (route) => false, arguments: arguments);
  }

  static void pop<T extends Object?>(BuildContext context, [T? result]) {
    Navigator.of(context).pop<T>(result);
  }

  static void popUntil(BuildContext context, String routeName) {
    Navigator.of(context).popUntil(ModalRoute.withName(routeName));
  }
}
