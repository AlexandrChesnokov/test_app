import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = new Random();

  int red = 255;
  int green = 255;
  int blue = 255;
  double opacity = 1.0;

  void changeColor() {
    setState(() {
      red = random.nextInt(255);
      green = random.nextInt(255);
      blue = random.nextInt(255);
      opacity = random.nextDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () => changeColor(),
        child: Container(
          alignment: Alignment.center,
          color: Color.fromRGBO(red, green, blue, opacity),
          child: Text(
            'Hey there',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
