import 'package:flutter/material.dart';
import 'package:flutter_todo_app/components/task_tile.dart';
import 'package:flutter_todo_app/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy juice'),
    Task(name: 'buy tomatoes'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            title: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (bool? checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
