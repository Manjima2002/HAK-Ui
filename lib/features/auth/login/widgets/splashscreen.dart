import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/login/login.dart';
import 'package:flutter_application_1/features/homescreen/home_page.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashTransition: SplashTransition.scaleTransition,
      splash: Stack(
        children: [
          Image.asset(
            'asset/images/Copy of DIL HAK_ (1).png',
            fit: BoxFit.cover,
            height: 900,
            width: 600,
          ),
        ],
      ),
      backgroundColor: Colors.black,
      nextScreen: Loginpage(),
      splashIconSize: 250,
      duration: 2000,
    );
  }
}
