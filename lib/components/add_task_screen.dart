import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTasks;
  final myController = TextEditingController();

  AddTaskScreen({required this.addTasks});

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
                  addTasks(myController.text);
                  print(myController.text);
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
