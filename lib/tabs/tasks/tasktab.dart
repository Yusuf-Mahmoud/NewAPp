import 'package:flutter/material.dart';
import 'package:flutter_timeline_calendar/timeline/model/calendar_options.dart';
import 'package:flutter_timeline_calendar/timeline/model/day_options.dart';
import 'package:flutter_timeline_calendar/timeline/model/headers_options.dart';
import 'package:flutter_timeline_calendar/timeline/utils/calendar_types.dart';
import 'package:flutter_timeline_calendar/timeline/widget/timeline_calendar.dart';
import 'package:provider/provider.dart';
import 'package:todo/Theme.dart';
import 'package:todo/tabs/tasks/task_provider.dart';
import 'package:todo/tabs/tasks/taskitem.dart';

class tasktab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskprovider = Provider.of<TaskProvider>(context);
    taskprovider.getTask();
    return Scaffold(
        body: Column(
      children: [
        TimelineCalendar(
          calendarType: CalendarType.GREGORIAN,
          calendarLanguage: "en",
          calendarOptions: CalendarOptions(
            viewType: ViewType.DAILY,
            toggleViewType: true,
            headerMonthElevation: 10,
            headerMonthShadowColor: Colors.black26,
            headerMonthBackColor: Colors.transparent,
          ),
          dayOptions: DayOptions(
              compactMode: true,
              weekDaySelectedColor: yusuf.primarycolor,
              selectedBackgroundColor: yusuf.primarycolor,
              disableDaysBeforeNow: true),
          headerOptions: HeaderOptions(
              weekDayStringType: WeekDayStringTypes.SHORT,
              monthStringType: MonthStringTypes.FULL,
              backgroundColor: yusuf.primarycolor,
              headerTextColor: Colors.black),
          onChangeDateTime: (datetime) {
            print(datetime.getDate());
          },
        ),
        const SizedBox(
          height: 8,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: taskprovider.tasks.length,
          itemBuilder: (_, index) => taskitem(taskprovider.tasks[index]),
        ))
      ],
    ));
  }
}
