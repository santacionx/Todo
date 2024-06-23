import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];
  //ref the box
  final _mybox = Hive.box('mybox');
  void createInitialData() {
    // run this method first time ever opening app
    todoList = [
      ["make tutorial", false],
      ["do exercise", false],
    ];
  }

  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  void updateDataBase() {
    _mybox.put("TODOLIST", todoList);
  }
}
