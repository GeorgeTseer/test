import 'package:flutter/material.dart';
import 'package:flutter_application/Hero.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Test',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      routes: {
        '/': (_) => const ExampleAnimation(),
      },
      onGenerateRoute: (_) {
        return PageRouteBuilder<Object>(
          transitionDuration: Duration(seconds: 3),
          pageBuilder: (_, __, ___) => ExampleAnimationTwo(),
        );
      },
    );
  }
}
