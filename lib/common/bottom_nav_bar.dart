import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/features/view/kuppi_page.dart';
import 'package:scholars_mobileapp/features/view/my_profile_page.dart';
import 'package:scholars_mobileapp/features/view/notifications_page.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

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
            color: Color.fromRGBO(11, 24, 43, 0.08),
            offset: Offset(8, 8),
            blurRadius: 24,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(0, Icons.home, const KuppiPage(), 'Home'),
          _buildNavItem(1, Icons.calendar_today, const KuppiPage(), 'Calendar'),
          _buildAddNavItem(),
          _buildNavItem(3, Icons.notifications, const NotificationsPage(),
              'Notifications'),
          _buildNavItem(4, Icons.person, const MyProfilePage(), 'My Profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, Widget page, String label) {
    final isSelected = _selectedIndex == index;
    final iconColor =
        isSelected ? Colors.white : PaletteLightMode.secondaryGreenColor;
    final lineColor =
        isSelected ? PaletteLightMode.secondaryGreenColor : Colors.transparent;

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
            Icon(icon, color: iconColor, size: 28),
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

  Widget _buildAddNavItem() {
    final isSelected = _selectedIndex == 2;
    final circleColor =
        isSelected ? PaletteLightMode.secondaryGreenColor : Colors.white;
    final iconColor =
        isSelected ? Colors.white : PaletteLightMode.primaryGreenColor;
    final lineColor = isSelected ? Colors.transparent : Colors.transparent;

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
              child: Icon(Icons.add, color: iconColor, size: 45),
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
