import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'jwt_service.dart';

class GraphQLService {
  static const String serverUrl = 'http://10.209.103.69:4000/graphql';

  static GraphQLClient? _client;

  static GraphQLClient get client {
    _client ??= _createClient();
    return _client!;
  }

  static GraphQLClient _createClient() {
    final httpLink = HttpLink(serverUrl);

    final authLink = AuthLink(
      getToken: () async {
        final token = await JWTService.getToken();
        return token != null ? 'Bearer $token' : null;
      },
    );

    final link = authLink.concat(httpLink);

    return GraphQLClient(
      link: link,
      cache: GraphQLCache(store: InMemoryStore()),
    );
  }

  // Refresh the client (useful after login/logout)
  static void refreshClient() {
    _client = _createClient();
  }

  static void operationExceptionHandler(BuildContext context, OperationException? error) {
    if (error?.graphqlErrors != null && error!.graphqlErrors.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.graphqlErrors.first.message),
          behavior: SnackBarBehavior.floating,
          showCloseIcon: true,
        ),
      );
    }
    if (error?.linkException != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Erreur ! Verifiez votre connexion internet !"),
          behavior: SnackBarBehavior.floating,
          showCloseIcon: true,
        ),
      );
    }
  }
}
