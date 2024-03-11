import 'package:flutter/material.dart';
import 'package:todo/Theme.dart';

class Defaultbutton extends StatelessWidget {
  Defaultbutton({super.key, required this.label, required this.onprssed});
  String label;
  VoidCallback onprssed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(
            MediaQuery.of(context).size.width * 0.7,
            42,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: yusuf.primarycolor,
        ),
        onPressed: () {},
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge,
        ));
  }
}
