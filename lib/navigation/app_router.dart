import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/ticket.graphql.dart';
import 'package:my_first_flutter_app/pages/auth/forgot_password.dart';
import 'package:my_first_flutter_app/pages/auth/login_page.dart';
import 'package:my_first_flutter_app/pages/auth/otp_page.dart';
import 'package:my_first_flutter_app/pages/auth/register_page.dart';
import 'package:my_first_flutter_app/pages/events/edit_event_page.dart';
import 'package:my_first_flutter_app/pages/events/edit_managers.dart';
import 'package:my_first_flutter_app/pages/main_navigation_page.dart';
import 'package:my_first_flutter_app/pages/events/event_detail_page.dart';
import 'package:my_first_flutter_app/pages/events/create_event_page.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/pages/tickets/buy_ticket_page.dart';
import 'package:my_first_flutter_app/pages/tickets/check_ticket_page.dart';
import 'package:my_first_flutter_app/pages/tickets/scanned_ticket.dart';
import 'package:my_first_flutter_app/pages/tickets/ticket_detail_page.dart';
import 'package:my_first_flutter_app/pages/users/edit_profile_page.dart';
import 'package:my_first_flutter_app/pages/utilities/notification_page.dart';
import 'package:my_first_flutter_app/pages/utilities/search_page.dart';
import 'package:my_first_flutter_app/pages/utilities/settings_page.dart';
import 'package:my_first_flutter_app/pages/utilities/web_view.dart';

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
      case RouteNames.otpPage:
        return MaterialPageRoute(
          builder: (_) => OtpPage(email: settings.arguments.toString()),
          settings: settings,
        );

      // Search pages
      case RouteNames.search:
        return MaterialPageRoute(builder: (_) => const SearchPage(), settings: settings);

      // Utility pages
      case RouteNames.profileEdit:
        return MaterialPageRoute(builder: (_) => const EditProfilePage(), settings: settings);
      case RouteNames.notifications:
        return MaterialPageRoute(builder: (_) => const NotificationPage(), settings: settings);
      case RouteNames.settings:
        return MaterialPageRoute(builder: (_) => const SettingsPage(), settings: settings);
      case RouteNames.webView:
        return MaterialPageRoute(
          builder: (_) => WebView(url: settings.arguments.toString()),
          settings: settings,
        );

      // Event pages
      case RouteNames.createEvent:
        return MaterialPageRoute(builder: (_) => const CreateEventPage(), settings: settings);
      case RouteNames.eventDetail:
        return MaterialPageRoute(
          builder: (_) => EventDetailPage(eventId: settings.arguments.toString()),
          settings: settings,
        );
      case RouteNames.editEvent:
        return MaterialPageRoute(
          builder: (_) => EditEventPage(eventId: settings.arguments.toString()),
          settings: settings,
        );
      case RouteNames.eventManagers:
        return MaterialPageRoute(
          builder: (_) => EditManagers(eventId: settings.arguments.toString()),
          settings: settings,
        );

      // Ticket pages
      case RouteNames.createTicket:
        return MaterialPageRoute(
          builder: (_) => BuyTicketPage(eventId: settings.arguments.toString()),
          settings: settings,
        );
      case RouteNames.ticketDetail:
        return MaterialPageRoute(
          builder: (_) => TicketDetailPage(ticketId: settings.arguments.toString()),
          settings: settings,
        );
      case RouteNames.checkTicket:
        return MaterialPageRoute(
          builder: (_) => CheckTicketPage(eventId: settings.arguments.toString()),
          settings: settings,
        );
      case RouteNames.scannedTicket:
        // print("------------\n\n\n\n\n\n\n\n\n\n\n\n\n------------------------");
        // print(settings.arguments?.runtimeType);
        // print(Variables$Mutation$CheckTicket);
        // print("------------------------------------");

        return MaterialPageRoute(
          builder: (_) =>
              ScannedTicketPage(variables: settings.arguments as Variables$Mutation$CheckTicket),
          settings: settings,
        );

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
