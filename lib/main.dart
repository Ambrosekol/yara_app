import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:yara_app/screens/forgot_password.dart';
import 'package:yara_app/screens/inAppNavScreens.dart';
import 'package:yara_app/screens/loginscreen.dart';
import 'package:yara_app/screens/welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final Color brandColor = const Color.fromARGB(255, 255, 184, 4);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: 'firstWelcomeScreen',
      routes: {
        'firstWelcomScreen': (context) => const WelcomeScreen(),
        'secondWelcomeScreen': (context) => const SecondScreen(),
        'loginScreen': (context) => const LoginScreen(),
        'fg_password': (context) => const ForgotPassword(),
        'homePage': (context) => const HomePage(),
      },
      home: Scaffold(
        backgroundColor: Colors.white,
        body: WelcomeScreen(),
      ),
    );
  }
}
