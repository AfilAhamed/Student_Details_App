import 'package:crud_hive_task/Models/db_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

ValueNotifier<List<Students>> studentLists = ValueNotifier([]);

//to add to db
Future<void> addstudents(Students value) async {
  final studentsDB = await Hive.openBox<Students>('student_db');
  final id = await studentsDB.add(value);
  value.id = id;
  studentLists.value.add(value);
  studentLists.notifyListeners();
}

//get from db
Future<void> getstudents() async {
  final studentsDB = await Hive.openBox<Students>('student_db');
  studentLists.value.clear();
  studentLists.value.addAll(studentsDB.values);
  studentLists.notifyListeners();
}

//delete from db

Future<void> deletestudents(int id) async {
  final studentsDB = await Hive.openBox<Students>('student_db');
  await studentsDB.deleteAt(id);
  getstudents();
}

Future<void> updatestudents(int id, Students value) async {
  final studentsDB = await Hive.openBox<Students>('student_db');
  await studentsDB.putAt(id, value);
  getstudents();
}

// Future<void> updatestudents( Students updatedstudents) async {
//   final studentsDB = await Hive.openBox<Students>('student_db');

//   final stdIndex = studentsDB.values.toList().indexWhere((std) => std == std);
//   if (stdIndex != -1) {
//     studentsDB.putAt(stdIndex, updatedstudents);
//   }
// }
