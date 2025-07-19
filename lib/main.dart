import 'package:flutter/material.dart';
import 'package:viewtrading/data/config/routing/app_router.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  // You can set up environment-specific configs here
  runApp(MyApp(env: env));
}

class MyApp extends StatelessWidget {
  final String env;
  const MyApp({required this.env, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
