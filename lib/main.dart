import 'package:flutter/material.dart';
import 'package:myapp/level1.dart';
import 'package:myapp/splashscreen.dart';
import 'package:myapp/loginscreen.dart';
import 'package:myapp/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/homescreen': (context) => HomeScreen(),
        '/levelsscreen': (context) => LevelsScreen(),
        '/level1': (context) => Level1Screen(levelNumber: 1),
      },
    );
  }
}
