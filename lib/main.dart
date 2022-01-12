//Packages
import 'package:flutter/material.dart';
// import 'package:flutter_demo/basic_widgets/gridview_widget.dart';
import 'package:flutter_demo/pages/reoderable_page_view.dart';
// import 'package:flutter_demo/basic_widgets/listview_widget.dart';
// import 'package:flutter_demo/navigation/navigation_route_2.dart';
// import 'package:flutter_demo/navigation/navigation_with_arguments.dart';
// import 'package:flutter_demo/navigation/navigation_with_data.dart';
// import 'package:flutter_demo/screens/home_screen.dart';
// import 'package:flutter_demo/screens/pass_arguments_screen.dart';
// import 'package:flutter_demo/screens/first_screen.dart';
// import 'package:flutter_demo/basic_widgets/fittedbox_widget.dart';
// import 'package:flutter_demo/basic_widgets/constraints_exapmle.dart';
// import 'package:flutter_demo/basic_widgets/column_widget.dart';
// import 'package:flutter_demo/basic_widgets/image_widget.dart';

// Basic Widgets
// import 'basic_widgets/container_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.pink),
      // home: const MyListViewWidget(),
      // home: const MyGridViewWidget(),
      home: ReoderableViewPage(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.pink),
//       home: TodosScreen(
//           todos: List.generate(
//               20,
//               (i) => Todo('Todo $i',
//                   'A description of what needs to be done for Todo $i'))),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         // visualDensity: VisualDensity.adaptivePlatformDensity
//         // brightness: Brightness.light,
//       ),
//       initialRoute: '/',
//       routes: {
//         // '/': (context) => const FirstRoute(),
//         // '/second': (context) => const SecondRoute(),
//         ExtractArgumentScreen.routeName: (context) =>
//             const ExtractArgumentScreen()
//       },

//       onGenerateRoute: (settings) {
//         if (settings.name == PassArgumentsScreen.routeName) {
//           //Cast the arguments to the correct
//           //type: ScreenArguements
//           final args = settings.arguments as ScreenArguments;

//           //the, extract the required data from
//           //the arguments and pass the data to the
//           // correct screen
//           return MaterialPageRoute(builder: (context) {
//             return PassArgumentsScreen(
//                 title: args.title, message: args.message);
//           });
//         }
//       },
//       // home: const MyHomePage());
//       // home: const MyImageWidget());
//       // home: const MyColumnWidget());
//       // home: const MyConstaintWidget());
//       // home: const MyFittedBoxWidget());
//       // home: const FirstScreen());
//       // home: const FirstRoute()
//       home: const HomeScreen(),
//     );
//   }
// }

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
