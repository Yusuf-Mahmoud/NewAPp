import 'package:flutter/material.dart';
import 'package:todo/Theme.dart';

class defbuttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Add Task',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: yusuf.greycolor),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: yusuf.primarycolor,
      ),
    );
  }
}
