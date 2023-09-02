import 'package:flutter/material.dart';
import 'package:scholarsync/common/button_icon.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/theme/palette.dart';

class DrawerMenu extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const DrawerMenu({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  String _userName = ''; // User's name
  String _userImage = ''; // User's image URL

  @override
  void initState() {
    super.initState();
    // Fetch user data here from your database or API
    _fetchUserData().then((userData) {
      setState(() {
        _userName = userData['name']!;
        _userImage = userData['image']!;
      });
    });
  }

  Future<Map<String, String>> _fetchUserData() async {
    // Replace with your database/API fetch logic here
    // Example data, replace with actual data fetching
    await Future.delayed(const Duration(seconds: 5)); // Simulate a delay
    return {
      'name': 'John Doe', // Replace with the user's name
      'image': 'https://example.com/user-image.jpg', // Replace with the user's image URL
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: PaletteLightMode.backgroundColor,
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: PaletteLightMode.primaryGreenColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0),
              ),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: PaletteLightMode.backgroundColor,
                  backgroundImage: NetworkImage(_userImage), // User's profile image URL
                ),
                const SizedBox(height: 10),
                Text(
                  _userName,
                  style: const TextStyle(
                    color: PaletteLightMode.textColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('My Profile'),
            leading: ButtonIcon(
              icon: IconConstants.personIcon,
              size: 16.0,
              backgroundColor: Colors.transparent,
              iconColor: Colors.black,
              isSelected: widget.selectedIndex == 0, // Highlight if selected
              onTap: () {
                widget.onItemTapped(0);
                Navigator.pop(context);
              },
            ),
          ),
          ListTile(
            title: const Text('Settings'),
            leading: ButtonIcon(
              icon: IconConstants.settingOutlinedIcon,
              size: 16.0,
              backgroundColor: Colors.transparent,
              iconColor: Colors.black,
              isSelected: widget.selectedIndex == 1,
              onTap: () {
                widget.onItemTapped(1);
                Navigator.pop(context);
              },
            ),
          ),
          ListTile(
            title: const Text('Academic Staff'),
            leading: ButtonIcon(
              icon: IconConstants.teacherIcon,
              size: 16.0,
              backgroundColor: Colors.transparent,
              iconColor: Colors.black,
              isSelected: widget.selectedIndex == 2,
              onTap: () {
                widget.onItemTapped(2);
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}