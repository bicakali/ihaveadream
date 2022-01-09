import 'package:flutter/material.dart';
import 'package:ihaveadream/screens/forgot_password.dart';
import 'package:ihaveadream/screens/log_in.dart';
import 'package:ihaveadream/screens/register.dart';
import 'package:ihaveadream/screens/splash.dart';
import 'package:ihaveadream/screens/welcome.dart';
import 'package:sizer/sizer.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      Orientation.portrait;
      return MaterialApp(
        title: 'I Have A Dream',
        theme: ThemeData.dark(),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/splash': (context) => const Splash(),
          '/intro': (context) => const WelcomeScreen(),
          '/logIn': (context) => LogInScreen(),
          '/register': (context) => const RegisterScreen(),
          '/forgotPassword': (context) => ForgotPassword(),
          '/home': (context) => const HomeScreen(),
        },
      );
    });
  }
}
