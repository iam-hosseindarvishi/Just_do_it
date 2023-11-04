import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "Just Do It",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.amber[400],
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.red,
              centerTitle: true,
            ),
            drawer: const Drawer(
              width: 200.0,
              child: Text("Child"),
            ),
            body: Center(
              //   child: Icon(
              // Icons.alarm,
              // size: 50.0,
              // color: Colors.red[800],
              child: IconButton(
                  onPressed: () {
                    print("برو نون بگیر");
                  },
                  icon: Icon(Icons.add)),
            )),
      ),
    )),
  );
}
