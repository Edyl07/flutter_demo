import 'package:flutter/material.dart';

class MyColumnWidget extends StatelessWidget {
  const MyColumnWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Column Widget Demo"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(child: Image.asset("assets/images/flor.jpg", height: 200,), flex: 3),
          SizedBox(width: 50),
          Expanded(child: Image.asset("assets/images/bouquet.jpg", height: 200), flex: 2,),
          Expanded(child: Image.asset("assets/images/rose.jpg", height: 200), ),
        ],
        ),
      ),
    );
  }
}