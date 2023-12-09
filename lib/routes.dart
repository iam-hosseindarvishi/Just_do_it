import 'package:flutter/material.dart';
import 'package:just_do_it/screens/home/home.dart';
import 'package:just_do_it/screens/splashScreen/splash_screen.dart';

class Routes {
  final Map<String, dynamic> routes = {
    "/": (context) => Home(),
    "/splash": (context) => SplashScreen(),
  };
}
