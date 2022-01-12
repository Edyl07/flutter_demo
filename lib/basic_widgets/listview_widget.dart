import 'package:flutter/material.dart';

class MyListViewWidget extends StatelessWidget {
  const MyListViewWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context,int index) {
        return ListTile(
          title: Text('Index' + index.toString()),
          subtitle: const Text('This is subtitle'),
          trailing: const Icon(Icons.money),
          leading: const Icon(Icons.home),
          isThreeLine: true,
        );
      }),
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: <Widget>[
      //     Container(
      //       width: 160.0,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 160.0,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 160.0,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: 160.0,
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       width: 160.0,
      //       color: Colors.orange,
      //     ),
      //   ],
      // ),
    );
  }
}