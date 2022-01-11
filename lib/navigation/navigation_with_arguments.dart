import 'package:flutter/material.dart';

class ScreenArguments {

  late final String title;
  late final String message;

  ScreenArguments(this.title, this.message);
}

class ExtractArgumentScreen extends StatelessWidget {
  const ExtractArgumentScreen({ Key? key }) : super(key: key);

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message)
      ),
    );
  }
}