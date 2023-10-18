import 'package:hive/hive.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List toDoList = [];

  final _myBox = Hive.box("myBox");

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Excersize", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updatedataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
