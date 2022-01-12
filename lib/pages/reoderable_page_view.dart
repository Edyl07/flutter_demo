import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReoderableViewPage extends StatefulWidget {
  // const ReoderableViewPage({ Key? key }) : super(key: key);

  List<String> items = [
    "Client",
    "Designer",
    "Developper",
    "Director",
    "Employee",
    "Manager",
    "Worker",
    "Owner"
  ];

  ReoderableViewPage({Key? key}) : super(key: key);

  @override
  _ReoderableViewPageState createState() => _ReoderableViewPageState();
}

class _ReoderableViewPageState extends State<ReoderableViewPage> {
  void onReorderData(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }

      final item = widget.items.removeAt(oldIndex);
      widget.items.insert(newIndex, item);
    });
  }

  void sorting() {
    setState(() {
      widget.items.sort();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Reoderable ListView  In Flutter'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: sorting, icon: const Icon(Icons.sort_by_alpha))
        ],
      ),
      body: ReorderableListView(children: <Widget>[
          for (final item in widget.items)
            Card(
              key: ValueKey(item),
              elevation: 2,
              child: ListTile(
                title: Text(
                  item,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                leading: const Icon(Icons.work, color: Colors.redAccent,),
              ),
            )
      ], onReorder: onReorderData),
    );
  }
}
