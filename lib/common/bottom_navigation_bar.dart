import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/constants/icon_constants.dart';
import 'package:scholars_mobileapp/theme/palette.dart';


class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTabTapped;

  const MyBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTabTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Adjust the height as needed
      height: 60, 
      child: BottomAppBar(
        // Background color of the BottomNavigationBar
        color: Palette.darkGreenColor, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Have to add the icons of the bottom naviation bar and place them here according to the path
            buildBottomNavItem(IconConstants.homeIcon as IconData, 'Home', 0),
            buildBottomNavItem(Icons.calendar_today, 'Calendar', 1),
            buildAddBottomNavItem(),
            buildBottomNavItem(IconConstants.notifOutlinedIcon as IconData, 'Notification', 3),
            buildBottomNavItem(IconConstants.peopleIcon as IconData, 'Profile', 4),
          ],
        ),
      ),
    );
  }

  Widget buildBottomNavItem(IconData iconData, String label, int index) {
    final selected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTabTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: selected ? Palette.lightGreenColor : Palette.lightBackgroundColor,
          ),
          // Exclude Add icon from having the underline
          if (selected && index != 2) 
            Container(
              width: 40,
              height: 2,
              color: Palette.lightBackgroundColor,
              // Add margin for spacing
              margin: const EdgeInsets.symmetric(vertical: 4), 
            ),
        ],
      ),
    );
  }

  Widget buildAddBottomNavItem() {
    final selected = currentIndex == 2;

    return GestureDetector(
      onTap: () => onTabTapped(2),
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Palette.lightBackgroundColor,
              ),
            ),
            Icon(
              IconConstants.addButtonIcon as IconData,
              color: selected ? Palette.darkGreenColor : Palette.darkGreenColor,
            ),
          ],
        ),
      ),
    );
  }
}
