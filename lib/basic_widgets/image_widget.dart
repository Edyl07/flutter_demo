import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Image Asset Demo"),
      ),
      body: Container(
        color: Colors.grey[200],
        // child: Image.asset('assets/images/flor.jpg'),
        child: Image.network('https://cdn.pixabay.com/photo/2016/07/28/20/00/hand-1549399_960_720.jpg',
        width: 150,
        height: 150,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.low,
        colorBlendMode: BlendMode.softLight,
        ),
        alignment: Alignment.center,
      ),
    );
  }
}