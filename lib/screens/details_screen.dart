import 'package:flutter/material.dart';
import 'package:flutter_demo/navigation/navigation_with_data.dart';

class DetailsScreen extends StatelessWidget {
  // const DetailsScreen({ Key? key, required this.todo }) : super(key: key);
  const DetailsScreen({ Key? key }) : super(key: key);

  // final Todo todo;

  @override
  Widget build(BuildContext context) {
  final todo = ModalRoute.of(context)!.settings.arguments as Todo;
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body:  Padding(padding: const EdgeInsets.all(16.0),
      child: Text(todo.description),
      ),
    );
  }
}