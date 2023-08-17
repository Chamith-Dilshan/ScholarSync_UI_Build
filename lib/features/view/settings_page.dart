import 'package:flutter/material.dart';
import 'package:scholarsync/common/nav_bar.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/features/view/login_page.dart';
import 'package:scholarsync/theme/palette.dart';
import 'package:scholarsync/common/custom_textfield.dart';
import 'package:scholarsync/constants/ui_constants.dart';
// import 'package:scholarsync/theme/app_theme.dart';
// import 'package:scholarsync/features/view/home_page.dart';


class SettingsPage extends StatelessWidget {
const SettingsPage({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
        title: 'Settings',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        titleCenter: true,
        backIcon: IconConstants.hamburgerMenuIcon,
        frontIcon: IconConstants.leftArrowIcon,
        frontIconToolTip: 'go to the next page',
        onFrontIconButtonpressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LogInPage()),
          );
        },
        onBackIconButtonpressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LogInPage()),
          );
        },
      ),
       backgroundColor: PaletteLightMode.backgroundColor,
      //body
body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'General',
              style: TextStyle(
                fontSize: 14,
                fontFamily: "inter",
                color: PaletteLightMode.titleColor,
              ),
            ),
            const SizedBox(height: 10),
            //settings widget 01
            Center(
              child: CustomTextField(
                firstLine: "Receive Notifications",
                firstLineStyle: const TextStyle(
                  fontSize: 14,
                  color: PaletteLightMode.titleColor,
                ),
                controller: TextEditingController(),
                ontapBox: () {
                  // onTap function for the Box
                },
                ontapFrontIcon: () {
                  // onTap function for FrontIcon
                },
                ontapBackIcon: () {
                  // onTap function for backIcon
                },
                frontIcon: IconConstants.bellOutlinedIcon,
                backIcon: IconConstants.toggleOffIcon,
                frontIconScale: 50,
                backIconScale: 60,
                borderColor: Colors.transparent,
                borderWidth: 0,
                backgroundColor: PaletteLightMode.backgroundColor,
                boxwidth: 369.84,
                boxheight: 75,
                borderRadius:10,
                padding: 16,
              ),
            ),

// Add spacing between the CustomTextField and the new Text widget

            const SizedBox(height: 20), 
            const Text(
              'Theme',
              style: TextStyle(
                fontSize: 14,
                fontFamily: "inter",
                color: PaletteLightMode.titleColor,
              ),
            ),
//settings widget 02
          Center(
              child: CustomTextField(
                firstLine: "Dark Mode",
                firstLineStyle: const TextStyle(
                  fontSize: 14,
                  color: PaletteLightMode.titleColor,
                ),
                controller: TextEditingController(),
                ontapBox: () {
                  // onTap function for the Box
                },
                ontapFrontIcon: () {
                  // onTap function for FrontIcon
                },
                ontapBackIcon: () {
                  // onTap function for backIcon
                },
                frontIcon: IconConstants.moonIcon,
                backIcon: IconConstants.toggleOffIcon,
                frontIconScale: 35,
                backIconScale: 60,
                borderColor: Colors.transparent,
                borderWidth: 0,
                backgroundColor: PaletteLightMode.backgroundColor,
                boxwidth: 369.84,
                boxheight: 75,
                borderRadius:10,
                padding: 16,
              ),
            ),
             const SizedBox(height: 10),
//settings widget 03
             Center(
              child: CustomTextField(
                firstLine: "Auto Dark Mode",
                firstLineStyle: const TextStyle(
                  fontSize: 14,
                  color: PaletteLightMode.titleColor,
                ),
                controller: TextEditingController(),
                ontapBox: () {
                  // onTap function for the Box
                },
                ontapFrontIcon: () {
                  // onTap function for FrontIcon
                },
                ontapBackIcon: () {
                  // onTap function for backIcon
                },
                frontIcon: IconConstants.darkNightModeIcon,
                backIcon: IconConstants.toggleOffIcon,
                frontIconScale: 50,
                backIconScale: 60,
                borderColor: Colors.transparent,
                borderWidth: 0,
                backgroundColor: Colors.white,
                boxwidth: 369.84,
                boxheight: 75,
                borderRadius:10,
                padding: 16,
              ),
            ),

          ],
        ),
        
      ),
     

  bottomNavigationBar: NavBar(
          onItemSelected: (int index) {
            // Handle navigation or actions based on the selected index
            // For example
          },
        ),
      );
    
  }
}

