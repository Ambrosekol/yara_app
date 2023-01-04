import 'package:flutter/material.dart';
import 'package:yara_app/screens/welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'firstWelcomScreen': (context) => const WelcomeScreen(),
        'secondWelcomeScreen': (context) => const SecondScreen()
      },
      home: const Scaffold(
        body: WelcomeScreen(),
      ),
    );
  }
}
