import 'package:flutter/material.dart';
import 'package:hahfyeez/pages/util/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

@override
State<HomePage> createState() => _HomePageState()
}

class _HomePageState extends State<HomePage> {
List toDolist = [
    ["Make Tutorial", false],
    ["Hahfyeez Learnings", false],
];
  

//checkbox was tapped
  void checkboxChanged(bool? value, int index) {
   setState(() {
     toDolist[index][1] = !toDolist[index][1];
   });
    }

  @override
  Widget build(BuildContext content) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDolist.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDolist[index][0],
            taskCompleted: toDolist[index][1],
            onChanged: (value) => checkboxChanged(value, index),
          );
        },
      ),
    );
  }
}
