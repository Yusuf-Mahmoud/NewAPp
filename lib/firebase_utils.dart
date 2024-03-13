import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/models/models.dart';

class FirebaseUtils {
  static CollectionReference<TaskModel> getTasksCollections() =>
      FirebaseFirestore.instance.collection('tasks').withConverter<TaskModel>(
          fromFirestore: (snapshot, options) =>
              TaskModel.fromjson(snapshot.data()!),
          toFirestore: (TaskModel, _) => TaskModel.toJson());

  static Future<void> addtasktofirestore(TaskModel task) {
    final taskCollection = getTasksCollections();
    final doc = taskCollection.doc();
    task.id = doc.id;
    return doc.set(task);
  }

  static List<TaskModel> getAllTasksFromFirestore() {
    return [];
  }

  static deletetaskfromfirestore(String taskid) {}
}
