import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/generated/graphql/operations/event.graphql.dart';
import 'package:my_first_flutter_app/navigation/route_names.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:my_first_flutter_app/services/graphql_service.dart';
import 'package:provider/provider.dart';

Widget customFollowEventWidget(
  BuildContext context, {
  required String eventId,
  required Widget Function(void Function() run, bool? isFollowed) builder,
  bool? previewState,
}) {
  return Mutation$FollowEvent$Widget(
    options: WidgetOptions$Mutation$FollowEvent(
      onCompleted: (_, result) {
        if (result != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              dismissDirection: DismissDirection.horizontal,
              behavior: SnackBarBehavior.floating,
              content: result.followEvent
                  ? const Text("Vous suivez actuellement cet évenement.")
                  : const Text("Vous ne suivez plus cet évenement."),
            ),
          );
        }
      },
      onError: (error) {
        GraphQLService.operationExceptionHandler(context, error);
      },
    ),
    builder: (runMutation, result) {
      final auth = context.watch<AuthProvider>();

      Mutation$FollowEvent? data;

      if (result?.data != null) {
        data = Mutation$FollowEvent.fromJson(result!.data!);
      }

      void run() {
        if (!auth.isAuthenticated) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Vous devez être connecté pour suivre des évenements."),
              dismissDirection: DismissDirection.horizontal,
              behavior: SnackBarBehavior.floating,
              action: SnackBarAction(
                label: 'Connexion',
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.login);
                },
              ),
            ),
          );
        } else {
          runMutation(Variables$Mutation$FollowEvent(id: eventId));
        }
      }

      return builder(run, data?.followEvent ?? previewState);
    },
  );
}
