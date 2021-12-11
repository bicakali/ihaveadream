import 'package:flutter/material.dart';
import 'package:ihaveadream/screens/welcome.dart';
import 'package:ihaveadream/variables.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: const WelcomeScreen(),
        backgroundColor: screenBgColor,
        photoSize: MediaQuery.of(context).size.width / 2,
        useLoader: false,
        image: const Image(
          image: AssetImage('./assets/cap.png'),
          color: Colors.grey,
        ),
      ),
    );
  }
}
