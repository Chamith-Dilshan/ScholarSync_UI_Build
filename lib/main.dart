import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/features/view/academic_staff_page.dart';
import 'package:scholars_mobileapp/features/view/my_projects_page.dart';
import 'package:scholars_mobileapp/theme/app_theme.dart';
import 'common/bottom_nav_bar.dart';
import 'features/view/calendar_page.dart';
import 'features/view/home_page.dart';
import 'features/view/kuppi_page.dart';
import 'features/view/my_profile_page.dart';
import 'features/view/notifications_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedPageIndex = 0;

  void _onNavBarItemSelected(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: MaterialApp(
        theme: AppThemeLight.theme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: _getPage(_selectedPageIndex),
          bottomNavigationBar: BottomNavBar(
            initialIndex: _selectedPageIndex,
            onItemSelected: _onNavBarItemSelected,
            navigateToPage: (context, page) {
              _onNavBarItemSelected(_getPageNumber(page));
            },
          ),
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const CalendarPage();
      case 1:
        return const CalendarPage();
      case 2:
        return const AcademicStaffPage();
      case 3:
        return const NotificationsPage();
      case 4:
        return const MyProfilePage();
      default:
        return const KuppiPage();
    }
  }

  int _getPageNumber(Widget page) {
    if (page is KuppiPage) {
      return 0;
    } else if (page is NotificationsPage) {
      return 3;
    } else if (page is MyProfilePage) {
      return 4;
    } else {
      return 0;
    }
  }
}
