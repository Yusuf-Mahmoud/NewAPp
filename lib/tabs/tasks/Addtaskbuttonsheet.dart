import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/tabs/tasks/defTextformfield.dart';
import 'package:todo/tabs/tasks/defbuttons.dart';

class AddTaskBottomsheet extends StatefulWidget {
  @override
  State<AddTaskBottomsheet> createState() => _AddTaskBottomsheetState();
}

class _AddTaskBottomsheetState extends State<AddTaskBottomsheet> {
  final titlecontroller = TextEditingController();

  final describtioncontroller = TextEditingController();
  var selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var dateFormat = DateFormat('dd-M-yyyy');
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
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
              controller: titlecontroller,
            ),
            const SizedBox(
              height: 12,
            ),
            textfieldd(
              hinttext: "Enter Task Description",
              controller: describtioncontroller,
              maxlines: 5,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('select date',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color(0xff383838),
                        ))),
            InkWell(
              onTap: () async {
                final dateTime = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 356)),
                  initialDate: DateTime.now(),
                  initialEntryMode: DatePickerEntryMode.calendarOnly,
                );
                if (dateTime != null) selectedDate = dateTime;
              },
              child: Text(dateFormat.format(DateTime.now()),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xff383838),
                      )),
            ),
            const SizedBox(
              height: 20,
            ),
            defbuttons(label: "Add Task", onprssed: addtask),
          ],
        ),
      ),
    );
  }

  void addtask() {}
}
