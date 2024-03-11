import 'package:flutter/material.dart';
import 'package:todo/Theme.dart';

class defbuttons extends StatelessWidget {
  defbuttons({required this.label, required this.onprssed});
  String label;
  VoidCallback onprssed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: yusuf.primarycolor,
        ),
        onPressed: onprssed,
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
              ),
        ));
  }
}
