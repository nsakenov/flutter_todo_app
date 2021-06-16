import 'package:flutter/foundation.dart';
import 'task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'example task'),
  ];

  notifyListeners();
}
