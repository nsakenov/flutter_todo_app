import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class Data extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'example task'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
