import 'package:flutter/material.dart';
import 'package:ihaveadream/screens/splash.dart';
import 'package:ihaveadream/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I Have A Dream',
      theme: ThemeData.dark(),
      home: const Splash(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash': (context) => const Splash(),
        '/intro': (context) => WelcomeScreen(),
      },
    );
  }
}

