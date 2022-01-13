import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({Key? key}) : super(key: key);

  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  //Define the various properties with default values. Update theses properties
  //When the user tap a FloatingActionButton

  double _width = 50;
  double _heigth = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Container Example"),
        ),
        body: AnimatedContainer(
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              //Create a random number generator
              final random = Random();

              //Create a random width & heigth
              _width = random.nextInt(300).toDouble();
              _heigth = random.nextInt(300).toDouble();

              //Create a random color
              _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                  random.nextInt(256), 1);

              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: const Icon(
            Icons.play_arrow,
          ),
        ));
  }
}
