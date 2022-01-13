import 'package:flutter/material.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({ Key? key }) : super(key: key);

  @override
  _OpacityScreenState createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State<OpacityScreen> {

  bool _visible =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fade In Out Widget"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _visible = !_visible;
        },
        );
      },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.flip),
      ),
      body: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
         duration: const Duration(seconds: 1),
         child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.red,
         )
      ),
      
    );
  }
}