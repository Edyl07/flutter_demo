import 'package:flutter/material.dart';

class MyFittedBoxWidget extends StatelessWidget {
  const MyFittedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter FittedBox Widget Dempo"),
        ),
        body: Row(
          children: [Expanded(
            color: Colors.red,
            child: Text(
              "Some Example Text  Some Example Text Some Example Text Some Example Text Some Example Text Some Example Text Some Example Text Some Example Text Some Example Text ",
              style: TextStyle(fontSize: 40),
            ),
          )],
        ));
  }
}
