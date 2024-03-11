import 'package:flutter/material.dart';
import 'package:todo/tabs/tasks/defTextformfield.dart';
import 'package:todo/tabs/tasks/defbuttons.dart';

class AddTaskBottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Text(
            "ADD New Task",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: const Color(0xff383838)),
          ),
          textfieldd(
            hinttext: "Enter Task Title",
          ),
          const SizedBox(
            height: 12,
          ),
          textfieldd(
            hinttext: "Enter Task Description",
            maxlines: 5,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('select date and time',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: const Color(0xff383838),
                      ))),
          Text('17/02/2024',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: const Color(0xff383838),
                  )),
          const SizedBox(
            height: 12,
          ),
          defbuttons(label: "Add Task", onprssed: addtask),
        ],
      ),
    );
  }

  void addtask() {}
}
