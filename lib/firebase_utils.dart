import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/models/models.dart';

class FirebaseUtils {
  getTasksCollections() =>
      FirebaseFirestore.instance.collection('tasks').withConverter<taskmodel>(
          fromFirestore: (snapshot, options) =>
              taskmodel.fromjson(snapshot.data()!),
          toFirestore: (taskmodel, options) => taskmodel.toJson());

  void addtasktofirestore(taskmodel task) {}
  List<taskmodel> getAllTasksFromFirestore() {
    return [];
  }

  void deletetaskfromfirestore(String taskid) {}
}
