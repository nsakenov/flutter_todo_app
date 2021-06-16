import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo_app/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final int taskIndex;
  final Function(bool?) checkboxCallback;

  TaskTile({
    required this.isChecked,
    required this.title,
    required this.taskIndex,
    required this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        Provider.of<Data>(context, listen: false).removeTask(taskIndex);
      },
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue) {
          checkboxCallback(newValue);
        },
      ),
    );
  }
}
