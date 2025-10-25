import 'package:graphql_flutter/graphql_flutter.dart';
import 'jwt_service.dart';

class GraphQLService {
  static const String serverUrl = 'http://172.17.128.1:4000/graphql';

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

  // Execute a GraphQL query
  static Future<QueryResult> query(
    String query, {
    Map<String, dynamic>? variables,
  }) async {
    final options = QueryOptions(
      document: gql(query),
      variables: variables ?? {},
    );

    return await client.query(options);
  }

  // Execute a GraphQL mutation
  static Future<QueryResult> mutate(
    String mutation, {
    Map<String, dynamic>? variables,
  }) async {
    final options = MutationOptions(
      document: gql(mutation),
      variables: variables ?? {},
    );

    return await client.mutate(options);
  }

  // Subscribe to GraphQL subscription
  static Stream<QueryResult> subscribe(
    String subscription, {
    Map<String, dynamic>? variables,
  }) {
    final options = SubscriptionOptions(
      document: gql(subscription),
      variables: variables ?? {},
    );

    return client.subscribe(options);
  }

  // Refresh the client (useful after login/logout)
  static void refreshClient() {
    _client = _createClient();
  }
}
