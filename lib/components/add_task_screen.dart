import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Add Task',
              style: TextStyle(color: Colors.lightBlue, fontSize: 30),
            ),
            SizedBox(
              height: 30,
              width: 230,
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                controller: myController,
              ),
            ),
            SizedBox(
              width: 230,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                ),
                child: Text('Add'),
                onPressed: () {
                  Provider.of<Data>(context, listen: false)
                      .addTask(myController.text);
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
