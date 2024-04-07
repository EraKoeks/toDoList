import 'package:hive/hive.dart';

class ToDoDataBase {

  List toDoList = [];


  // reference out box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st ever time opening this app
  void createInitialData () {
    toDoList = [
      ['Leer FLUTTER', false],
    ['Ga Sporten', false],
    ];
  }

  //load the data from the database
void loadData() {
    toDoList = _myBox.get('TODOLIST');

}

// update the database
void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);

}
}