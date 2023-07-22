import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/nav_bar.dart';
import 'package:scholars_mobileapp/constants/icon_constants.dart';
import 'package:scholars_mobileapp/features/view/login_page.dart';
import 'package:scholars_mobileapp/theme/palette.dart';
import 'package:scholars_mobileapp/common/custom_textfield.dart';
import 'package:scholars_mobileapp/constants/ui_constants.dart';
// import 'package:scholars_mobileapp/theme/app_theme.dart';
// import 'package:scholars_mobileapp/features/view/home_page.dart';


class SettingsPage extends StatelessWidget {
const SettingsPage({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
        titelCenter: true,
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
       backgroundColor: Palette.lightBackgroundColor,
      //body
body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'General',
              style: TextStyle(
                fontSize: 13,
                fontFamily: "inter",
                color: Palette.darkBackgroundColor,
              ),
            ),
            const SizedBox(height: 10),
            //settings widget 01
            Center(
              child: CustomTextField(
                firstLine: "First Line Text",
                firstLineStyle: const TextStyle(
                  fontSize: 12,
                  color: Palette.darkBackgroundColor,
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
                backIcon: IconConstants.moonIcon,
                frontIconScale: 50,
                backIconScale: 50,
                borderColor: Colors.transparent,
                borderWidth: 0,
                backgroundColor: Colors.white,
                boxwidth: 369.84,
                boxheight: 65,
                padding: 16,
              ),
            ),

// Add spacing between the CustomTextField and the new Text widget

            const SizedBox(height: 20), 
            const Text(
              'Theme',
              style: TextStyle(
                fontSize: 13,
                fontFamily: "inter",
                color: Palette.darkBackgroundColor,
              ),
            ),
//settings widget 02
          Center(
              child: CustomTextField(
                firstLine: "First Line Text",
                firstLineStyle: const TextStyle(
                  fontSize: 12,
                  color: Palette.darkBackgroundColor,
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
                backIcon: IconConstants.moonIcon,
                frontIconScale: 50,
                backIconScale: 50,
                borderColor: Colors.transparent,
                borderWidth: 0,
                backgroundColor: Colors.white,
                boxwidth: 369.84,
                boxheight: 65,
                padding: 16,
              ),
            ),
             const SizedBox(height: 10),
//settings widget 03
             Center(
              child: CustomTextField(
                firstLine: "First Line Text",
                firstLineStyle: const TextStyle(
                  fontSize: 12,
                  color: Palette.darkBackgroundColor,
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
                backIcon: IconConstants.moonIcon,
                frontIconScale: 50,
                backIconScale: 50,
                borderColor: Colors.transparent,
                borderWidth: 0,
                backgroundColor: Colors.white,
                boxwidth: 369.84,
                boxheight: 65,
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

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: AppThemeLight.theme,
//       debugShowCheckedModeBanner: false ,
//       home: const SettingsPage(),
//     );
//   }
// }