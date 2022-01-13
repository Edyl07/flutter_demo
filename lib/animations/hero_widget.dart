import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Harry Potter"),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const DetailsScreen();
            }));
          },
          child: Center(
            child: Hero(
              tag: 'myHero',
              child:
                  Image.network('https://wallpaperaccess.com/full/377423.jpg'),
            ),
          ),
        ));
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'myHero',
            child: Image.network('https://wallpaperaccess.com/full/377423.jpg'),
          ),
        ),
      ),
    );
  }
}
