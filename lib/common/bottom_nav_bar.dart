import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholarsync/features/view/calendar_page.dart';
import 'package:scholarsync/features/view/home_page.dart';
import 'package:scholarsync/features/view/my_profile_page.dart';
import 'package:scholarsync/features/view/notifications_page.dart';
import 'package:scholarsync/theme/palette.dart';
import 'package:scholarsync/constants/icon_constants.dart';

class BottomNavBar extends StatefulWidget {
  final int initialIndex;
  final void Function(int index) onItemSelected;
  final void Function(BuildContext context, Widget page) navigateToPage;

  const BottomNavBar({
    Key? key,
    this.initialIndex = 0,
    required this.onItemSelected,
    required this.navigateToPage,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      decoration: const BoxDecoration(
        color: PaletteLightMode.primaryGreenColor,
        boxShadow: [
          BoxShadow(
            color: PaletteLightMode.shadowColor,
            offset: Offset(8, 8),
            blurRadius: 24,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(0, IconConstants.homeIcon, const HomePage(), 'Home'),
            _buildNavItem(1, IconConstants.calendarIcon, const CalendarPage(),
                'Calendar'),
            _buildAddNavItem(),
            _buildNavItem(3, IconConstants.bellFilledIcon,
                const NotificationsPage(), 'Notifications'),
            _buildNavItem(4, IconConstants.personIcon, const MyProfilePage(),
                'My Profile'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String iconName, Widget page, String label) {
    final isSelected = _selectedIndex == index;
    final iconColor = isSelected
        ? PaletteLightMode.whiteColor
        : PaletteLightMode.secondaryGreenColor;
    final lineColor = isSelected
        ? PaletteLightMode.secondaryGreenColor
        : PaletteLightMode.transparentColor;

    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
          widget.onItemSelected(index);
          widget.navigateToPage(context, page);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconName,
              colorFilter: ColorFilter.mode(
                iconColor,
                BlendMode.srcIn,
              ),
              width: 23,
              height: 23,
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                  color: lineColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddNavItem() {
    final isSelected = _selectedIndex == 2;
    final circleColor = isSelected
        ? PaletteLightMode.secondaryGreenColor
        : PaletteLightMode.whiteColor;
    final iconColor = isSelected
        ? PaletteLightMode.whiteColor
        : PaletteLightMode.primaryGreenColor;
    final lineColor = isSelected
        ? PaletteLightMode.transparentColor
        : PaletteLightMode.transparentColor;

    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = 2;
          });
          widget.onItemSelected(2);
          // Add your logic for the plus icon button here
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: circleColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset(
                  IconConstants.addButtonIcon,
                  colorFilter: ColorFilter.mode(
                    iconColor,
                    BlendMode.srcIn,
                  ),
                  width: 10,
                  height: 10,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Container(
              width: 32,
              height: 4,
              decoration: BoxDecoration(
                color: lineColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
