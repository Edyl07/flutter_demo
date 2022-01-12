import 'package:flutter/material.dart';

class MyGridViewWidget extends StatelessWidget {
  const MyGridViewWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: GridView.count(crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
      ),
    );
  }
}