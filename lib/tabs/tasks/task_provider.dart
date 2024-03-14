import 'package:flutter/material.dart';
import 'package:todo/firebase_utils.dart';
import 'package:todo/models/models.dart';

class TaskProvider with ChangeNotifier {
  List<TaskModel> tasks = [];
  Future<void> getTask() async {
    tasks = await FirebaseUtils.getAllTasksFromFirestore();
    notifyListeners();
  }
}
