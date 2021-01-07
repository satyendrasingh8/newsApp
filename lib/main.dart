import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/splash1.png',
        ),
        splashIconSize: 165,
        nextScreen: Home(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.lightBlue,
        duration: 3000,
      ),
    );
  }
}
