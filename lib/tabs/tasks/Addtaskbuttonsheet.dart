import 'package:flutter/material.dart';

class AddTaskBottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(12),
        child: Column(
          children: [Text("Add New Task")],
        ));
  }
}
