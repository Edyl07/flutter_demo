import 'package:flutter/material.dart';

class MyConstaintWidget extends StatefulWidget {
  const MyConstaintWidget({ Key? key }) : super(key: key);

  @override
  _MyConstaintWidgetState createState() => _MyConstaintWidgetState();
}

class _MyConstaintWidgetState extends State<MyConstaintWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Constraint Widget Demo"),
      ),
      body: Center(
        // alignment: Alignment.topRight,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 70,
            maxHeight: 150,
            minWidth: 70,
            maxWidth: 150
          ),
        child: Container(
          color: Colors.red,
          width: 10,
          height: 10,
        ),),
    ));
  }
}