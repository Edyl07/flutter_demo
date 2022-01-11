import 'package:flutter_demo/screens/second_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FirstScreenState extends State<FirstScreen> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<int> _counter;

  Future<void> _incrementerCounter() async {
    final SharedPreferences prefs = await _prefs;
    final int counter = (prefs.getInt('counter') ?? 0) + 1;

    setState(() {
      _counter =
          prefs.setInt("counter", counter).then((bool success) => counter);
    });
  }

  @override
  void initState() {
    super.initState();
    _counter = _prefs.then((SharedPreferences prefs) {
      return (prefs.getInt('counter') ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Shared Preferences Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder<int>(
              future: _counter,
              builder: (BuildContext context, AsyncSnapshot<int> snapschot) {
                switch (snapschot.connectionState) {
                  case ConnectionState.waiting:
                    return const CircularProgressIndicator();

                  default:
                    if (snapschot.hasError) {
                      return Text("Error: ${snapschot.error}");
                    } else {
                      return Text(
                        "Button tapped ${snapschot.data} time${snapschot.data == 1 ? '' : 's' }",
                        style: const TextStyle(fontSize: 20.0),
                      );
                    }
                }
              },
            ),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Get.to(const MySecondScreen());
            }, child: const Text("Navigate to second screen"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementerCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),),
    );
  }
}
