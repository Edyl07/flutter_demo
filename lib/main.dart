//Packages
import 'package:flutter/material.dart';
import 'package:flutter_demo/basic_widgets/column_widget.dart';
// import 'package:flutter_demo/basic_widgets/image_widget.dart';

// Basic Widgets
// import 'basic_widgets/container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // brightness: Brightness.light,
        ),
        // home: const MyHomePage());
        // home: const MyImageWidget());
        home: const MyColumnWidget());
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text("Material App Demo Theme"),
//         backgroundColor: Colors.red,
//         // actions: const [Icon(Icons.eighteen_mp_outlined)],
//         elevation: 0.0,
//         centerTitle: true,
//       ),
//       endDrawer: Drawer(
//         child: ListView(
//           children: const <Widget>[
//             DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//                 child: Text(
//                   'Menu',
//                   style: TextStyle(color: Colors.white, fontSize: 24),
//                 ))
//           ],
//         ),
//       ),
//       bottomNavigationBar:
//           BottomNavigationBar(items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
//         BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
//       ]),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       floatingActionButton: FloatingActionButton.extended(
//           onPressed: () {}, label: const Text('Approve'),
//           icon: const Icon(Icons.thumb_up),
//           backgroundColor: Colors.pink,),
//       body: const Center(
//         child: Text(
//           "Hello World",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
