import 'package:flutter/material.dart';
import 'package:ihaveadream/screens/welcome.dart';
import 'package:ihaveadream/variables.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';
import 'package:sizer/sizer.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: const WelcomeScreen(),
        backgroundColor: screenBgColor,
        photoSize: 50.w,
        useLoader: false,
        image: const Image(
          image: AssetImage('./assets/cap.png'),
          color: Colors.grey,
        ),
      ),
    );
  }
}
