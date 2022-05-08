import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:note_app/presentation/screens/home_screen.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            "Note App",
            textStyle: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
            colors: [
              Colors.pink,
              Colors.deepPurple,
              Colors.yellow,
              Colors.green,
              Colors.blue,
              Colors.white,
            ],
            speed: const Duration(milliseconds: 1000),
          ),
        ],
      ),
      duration: 2500,
      nextScreen: const HomeScreen(),
    );
  }
}
