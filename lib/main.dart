import 'package:flutter/material.dart';
import 'package:just_do_it/routes.dart';
import 'package:just_do_it/screens/home/home.dart';
import 'package:just_do_it/screens/splashScreen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
