import 'package:animated_splash_screen/animated_splash_screen.dart'; 
import 'package:flutter/material.dart';

import '../../demo.dart';

 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2000,
      splash: Image.asset(
        'assets/ces.png',
      ),
      nextScreen:  const DemoOnboard(),
      // nextScreen:  OnBoardingScreen(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.black,
    );
  }
}
