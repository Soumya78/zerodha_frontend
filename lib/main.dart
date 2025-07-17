import 'package:flutter/material.dart';

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
    return MaterialApp(
      title: 'ViewTrading ( env)',
      home: Scaffold(
        appBar: AppBar(title: Text('ViewTrading [ env]')),
        body: Center(child: Text('Hello from  env!')),
      ),
    );
  }
}
