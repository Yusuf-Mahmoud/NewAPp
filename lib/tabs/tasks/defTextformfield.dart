import 'package:flutter/material.dart';

class textfieldd extends StatelessWidget {
  textfieldd({
    required this.controller,
    required this.hinttext,
    this.maxlines,
  });
  String hinttext;
  final TextEditingController controller;
  int? maxlines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Colors.black,
      ),
      controller: controller,
      decoration: InputDecoration(
        hintText: hinttext,
      ),
      maxLines: maxlines,
    );
  }
}
