import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context, Data, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = Data.tasks[index];
          return TaskTile(
              title: task.name,
              isChecked: task.isDone,
              taskIndex: index,
              checkboxCallback: (bool? checkboxState) {
                Data.updateTask(task);
              });
        },
        itemCount: Data.taskCount,
      );
    });
  }
}
