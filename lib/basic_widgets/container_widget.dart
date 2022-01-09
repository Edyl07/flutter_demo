import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Container Demo Theme'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            color: const Color.fromARGB(255, 66, 165, 245),
            alignment: const Alignment(0, 0),
            child: Container(
              color: Colors.green,
              margin: const EdgeInsets.fromLTRB(20, 40, 10, 30),
              padding: const EdgeInsets.all(20),
              child: const Text("Hello everyone and welcome to our course"),
            ),
          ),
        ));
  }
}
