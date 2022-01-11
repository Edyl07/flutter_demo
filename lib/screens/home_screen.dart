import 'package:flutter/material.dart';
import 'package:flutter_demo/navigation/navigation_with_arguments.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ExtractArgumentScreen.routeName,
                      arguments:
                          ScreenArguments('Extract Arguments Screen', 
                          'This message is extracted in the build method.'));
                  
                },
                child: const Text('Navigate to screen that extracts arguments')),
                ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, ExtractArgumentScreen.routeName,
                  //     arguments:
                  //         ScreenArguments('Extract Arguments Screen', 
                  //         'This message is extracted in the build method.'));
                  Navigator.pushNamed(context, ExtractArgumentScreen.routeName,
                      arguments:
                          ScreenArguments('Extract Arguments Screen', 
                          'This message is extracted in the onGenerateRoute.'));
                },
                // child: const Text('Navigate to screen that extracts arguments'))
                child: const Text('Navigate to a named that accepts arguments'))
          ],
        ),
      ),
    );
  }
}


