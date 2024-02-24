import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:desamas/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
      useImmersiveMode: true,
      duration: const Duration(seconds: 4),
      nextScreen: const LoginScreen(),
      backgroundColor: const Color.fromRGBO(31, 175, 176, 1),
      splashScreenBody: Center(
        child: SizedBox(
          height: 500,
          width: 500,
          child: Lottie.network(
          // "https://lottie.host/cc7d063b-3fef-4fea-a63b-eada8d4f2b05/Sec82qIVFQ.json"
            'https://lottie.host/f972517a-4c7f-47df-9e89-d6db643eeced/uB0ZI8CYSG.json',
          ),
        ),
      ),
    );
  }
}
