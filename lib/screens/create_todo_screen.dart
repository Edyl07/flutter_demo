import 'package:flutter/material.dart';
import 'package:flutter_demo/adapters/todo.dart';
import 'package:hive/hive.dart';

class CreateTodoScreen extends StatefulWidget {
  const CreateTodoScreen({ Key? key }) : super(key: key);

  @override
  _CreateTodoScreenState createState() => _CreateTodoScreenState();
}

class _CreateTodoScreenState extends State<CreateTodoScreen> {

  final _formKey = GlobalKey<FormState>();
  String note = "";
  String task = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo Item"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Add Note Title'
              ),
              onChanged: (value){
                setState(() {
                  note = value;
                });
              },
            ),
            TextFormField(
              validator: (value){
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Add Task Description'
              ),
              onChanged: (value){
                setState(() {
                  task = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  Box<Todo> box = Hive.box<Todo>('Todos');
                  box.add(Todo(note, task));
                  Navigator.of(context).pop();
                }
            }, child: const Text('Submit'))
          ],
        )
        ),
    );
  }
}