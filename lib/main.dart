import 'package:desamas/layout_screen.dart';
import 'package:desamas/screens/beranda_screen.dart';
import 'package:desamas/screens/login_screen.dart';
import 'package:desamas/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desamas',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/layout': (context) => const LayoutScreen(),
        '/beranda': (context) => const BerandaScreen(),
        // '/test': (context) => const SampleScreenTest(),
      },
    );
  }
}
