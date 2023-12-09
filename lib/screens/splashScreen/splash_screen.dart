import 'package:flutter/material.dart';
import 'package:just_do_it/screens/home/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Wellcome Back",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 6.0),
            ),
            TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: Text(
                  "Go To Home",
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
