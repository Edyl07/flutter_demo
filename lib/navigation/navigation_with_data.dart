import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/details_screen.dart';

class Todo {
  
  final String title;
  final String description;

   Todo(this.title, this.description);
}



class TodosScreen extends StatelessWidget {

  const TodosScreen({ Key? key, required this.todos }) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos"),
      ),
      body: ListView.builder(itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: (){
              Navigator.push(context,
              //  MaterialPageRoute(builder: (context) => DetailsScreen(todo: todos[index])));
               MaterialPageRoute(builder: (context) => const DetailsScreen(),
               settings: RouteSettings(
                 arguments: todos[index]
               )
               ));
            },
          );
        }),
    );
  }
}