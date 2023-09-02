import 'package:calendar_view/calendar_view.dart';
import 'package:scholarsync/theme/palette.dart';

final List<CalendarEventData> eventdata = [
    CalendarEventData(
      date: DateTime.now(),
      event: "Event 1",
      title: "Event meeting 1",
      description: "Today is Event meeting 1.",
      color: PaletteLightMode.primaryGreenColor,
      startTime: DateTime(2023, 9, 1, 5, 30),
      endTime: DateTime(2023, 9, 1, 8),
    ),
    CalendarEventData(
      date: DateTime.now().add(const Duration(days: 1)),
      event: "Event 2",
      title: "Event meeting 2",
      description: "Today is Event meeting 2.",
      color: PaletteLightMode.primaryGreenColor,
      startTime: DateTime(2023, 9, 2, 2, 30),
      endTime: DateTime(2023, 9, 2, 5),
    ),
    CalendarEventData(
      date: DateTime.now().subtract(const Duration(days: 1)),
      event: "Event 3",
      title: "Event meeting 3",
      description: "Today is Event meeting 3",
      color: PaletteLightMode.primaryGreenColor,
      startTime: DateTime(2023, 9, 2, 2, 30),
      endTime: DateTime(2023, 9, 2, 5),
    ),
  ];