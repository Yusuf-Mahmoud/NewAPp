import 'package:flutter/material.dart';

class textfieldd extends StatelessWidget {
  textfieldd({
    super.key,
    required this.hinttext,
    this.maxlines,
  });
  String hinttext;
  int? maxlines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hinttext,
      ),
      maxLines: maxlines,
    );
  }
}
