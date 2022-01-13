import 'package:flutter/material.dart';

class OpacityWidget extends StatefulWidget {
  const OpacityWidget({ Key? key }) : super(key: key);

  @override
  _OpacityWidgetState createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fade In Out Widget"),
      ),
    );
  }
}