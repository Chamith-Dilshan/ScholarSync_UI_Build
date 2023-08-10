// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:scholarsync/common/button_icon.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/features/view/login_page.dart';
import 'package:scholarsync/theme/palette.dart';

class NavBar extends StatefulWidget {
  final void Function(int index) onItemSelected;

  const NavBar({Key? key, required this.onItemSelected}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 410,
      height: 70,
      decoration: const BoxDecoration(
        color: PaletteLightMode.primaryGreenColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ButtonIcon(
            icon: IconConstants.homeIcon,
            iconColor: _selectedIndex == 0 ? PaletteLightMode.backgroundColor : PaletteLightMode.secondaryGreenColor,
            size: 38.5,
            onTap: () {
              setState(() {
                _selectedIndex = 0;
              });
              widget.onItemSelected(0);
              navigateToPage(const LogInPage()); // Navigate to HomePage.dart
            },
          ),
          ButtonIcon(
            icon: IconConstants.calendarIcon,
            iconColor: _selectedIndex == 1 ? PaletteLightMode.secondaryGreenColor : PaletteLightMode.secondaryGreenColor,
            size: 38.5,
            onTap: () {
              setState(() {
                _selectedIndex = 1;
              });
              widget.onItemSelected(1);
              navigateToPage(const LogInPage()); // Navigate to TimetablePage.dart
            },
          ),
          ButtonIcon(
            icon: IconConstants.addButtonIcon,
            iconColor: _selectedIndex == 2 ? PaletteLightMode.backgroundColor : PaletteLightMode.backgroundColor,
            size: 60,
            onTap: () {
              setState(() {
                _selectedIndex = 2;
              });
              widget.onItemSelected(2);
              navigateToPage(const LogInPage()); // Navigate to AddPage.dart
            },
          ),
          ButtonIcon(
            icon: IconConstants.bellFilledIcon,
            iconColor: _selectedIndex == 3 ? PaletteLightMode.backgroundColor : PaletteLightMode.secondaryGreenColor,
            size: 38.5,
            onTap: () {
              setState(() {
                _selectedIndex = 3;
              });
              widget.onItemSelected(3);
              navigateToPage(const LogInPage()); // Navigate to NotificationsPage.dart
            },
          ),
          ButtonIcon(
            icon: IconConstants.userFilledIcon,
            iconColor: _selectedIndex == 4 ? PaletteLightMode.backgroundColor : PaletteLightMode.secondaryGreenColor,
            size: 38.5,
            onTap: () {
              setState(() {
                _selectedIndex = 4;
              });
              widget.onItemSelected(4);
              navigateToPage(const LogInPage());
               // Navigate to MyProfilePage.dart
               
            },
          ),
         
       
        ],
      ),
    );
  }

  

  // Function to navigate to the provided page
  void navigateToPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
