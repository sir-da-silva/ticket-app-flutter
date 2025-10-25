import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'services/graphql_service.dart';
import 'navigation/app_router.dart';
import 'navigation/route_names.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GraphQL client
  await initHiveForFlutter();

  runApp(const MyApp());
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
        initialRoute: RouteNames.home,
      ),
    );
  }
}
