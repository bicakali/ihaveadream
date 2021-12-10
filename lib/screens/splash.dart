import 'package:flutter/material.dart';
import 'package:ihaveadream/screens/welcome.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: WelcomeScreen(),
        backgroundColor: Colors.black45,
        image: Image(image: AssetImage('/assets/cap.png'), color: Colors.grey),
        useLoader: false,
      ),
    );
  }
}
