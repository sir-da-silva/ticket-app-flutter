import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_first_flutter_app/services/auth_provider.dart';
import 'package:my_first_flutter_app/services/jwt_service.dart';
import 'package:provider/provider.dart';
import 'services/graphql_service.dart';
import 'navigation/app_router.dart';
import 'navigation/route_names.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GraphQL client
  await initHiveForFlutter();

  // UI auth state
  final authProvider = AuthProvider();
  await authProvider.initSession();

  runApp(
    ChangeNotifierProvider(create: (_) => authProvider, child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: ValueNotifier(GraphQLService.client),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: RouteNames.main,
      ),
    );
  }
}
