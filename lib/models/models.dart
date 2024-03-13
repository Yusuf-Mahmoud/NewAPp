import 'package:cloud_firestore/cloud_firestore.dart';

class TaskModel {
  late final String id;
  final String title;
  final String describtion;
  final DateTime dateTime;
  final bool isdone;

  TaskModel({
    this.id = '',
    required this.title,
    required this.describtion,
    required this.dateTime,
    this.isdone = false,
  });

  TaskModel.fromjson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            title: json['title'],
            describtion: json['describtion'],
            dateTime: (json['datetime'] as Timestamp).toDate(),
            isdone: json['isdone']);

  Map<String, dynamic> toJson() => {
        'id': id,
        "title": title,
        "describtion": describtion,
        "dateTime": Timestamp.fromDate(dateTime),
        "isdone": isdone,
      };
}
