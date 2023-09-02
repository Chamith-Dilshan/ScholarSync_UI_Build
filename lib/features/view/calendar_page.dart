import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/constants/ui_constants.dart';
import 'package:scholarsync/theme/palette.dart';
import 'package:scholarsync/model/event_data.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateFormat monthYearFormat = DateFormat('dd MMMM yyyy');
  EventController eventController = EventController();

  @override
  void initState() {
    super.initState();
    eventController.addAll(eventdata);
  }

  @override
  void dispose() {
    super.dispose();
    eventController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
          title: 'Calendar',
          fontSize: 22,
          fontWeight: FontWeight.w600,
          titleCenter: false,
          backIcon: IconConstants.hamburgerMenuIcon,
          onBackIconButtonpressed: () {
            //Icon funtion
          }
      ),
      body: DayView(
        controller: eventController,
        showVerticalLine: true,
        minDay: DateTime(2020),
        maxDay: DateTime(2030),
        heightPerMinute: 1,
        scrollPhysics: const BouncingScrollPhysics(),
        pageViewPhysics: const BouncingScrollPhysics(),
        headerStyle: const HeaderStyle(
            headerTextStyle: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            decoration: BoxDecoration(
              color: PaletteLightMode.backgroundColor,
            )),
        dateStringBuilder: (date, {secondaryDate}) {
          return monthYearFormat.format(date);
        },
        onEventTap: (events, date) => print(events),
      ),
    );
  }
}
