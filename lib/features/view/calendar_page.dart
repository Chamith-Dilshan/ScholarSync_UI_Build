import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/constants/ui_constants.dart';
import 'package:scholarsync/theme/palette.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final DateTime _currentStartDate = DateTime.now();
  DateFormat monthYearFormat = DateFormat('MMMM yyyy');
  String monthYearText = '';

  @override
  void initState() {
    super.initState();
    updateMonthYearText(_currentStartDate);
  }

  void updateMonthYearText(DateTime date){
    setState(() {
      monthYearText = monthYearFormat.format(date);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(title: 'Calendar', 
      fontSize: 22, 
      fontWeight:FontWeight.w600, 
      titleCenter: false, 
      backIcon: IconConstants.hamburgerMenuIcon, 
      onBackIconButtonpressed: (){
        //Icon funtion
      }
      ),
      body: WeekView(
        showLiveTimeLineInAllDays: false,
        width: MediaQuery.of(context).size.width,
        minDay: DateTime(2020, 01, 01),
        maxDay: DateTime(2030, 12, 31),
        initialDay: DateTime.now(),
        startDay: WeekDays.sunday,
        weekTitleHeight: 60,

        headerStyle: const HeaderStyle(
          headerTextStyle:TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          decoration: BoxDecoration(
            color: PaletteLightMode.backgroundColor,
          )
        ),
        headerStringBuilder:(date, {secondaryDate}) {
          return monthYearFormat.format(date);
        },
        
        onPageChange: (date, index) {
          final newStartDate = DateTime(_currentStartDate.year,index + 1,1);
          setState(() {
            updateMonthYearText(newStartDate);
          });
        },       
      ),
    );
  }
}
