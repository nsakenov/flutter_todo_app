import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/task.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo_app/screens/tasks_screen.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            title: Provider.of<Data>(context).tasks[index].name,
            isChecked: Provider.of<Data>(context).tasks[index].isDone,
            checkboxCallback: (bool? checkboxState) {
              setState(() {
                Provider.of<Data>(context).tasks[index].toggleDone();
              });
            });
      },
      itemCount: Provider.of<Data>(context).tasks.length,
    );
  }
}
