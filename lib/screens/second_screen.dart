import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({ Key? key }) : super(key: key);

  @override
  _MySecondScreenState createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {

  int _count = 0;
  // ignore: non_constant_identifier_names
  final data_count = GetStorage();

  @override
  void initState() {
    super.initState();
    if (data_count.read("count") != null) {
      _count = data_count.read("count");
    }
  }
  

  @override
  Widget build(BuildContext context) {
    data_count.writeIfNull("count", 0);
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX  shared preferenceDemo"),
      ),
      body: Center(
        child: Text("Button taped ${data_count.read("count")} times",
        style: const TextStyle(fontSize: 20.0),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _count++;
          data_count.write("count", _count);
        });
      },
      child: const Icon(Icons.add),),
    );
  }
}