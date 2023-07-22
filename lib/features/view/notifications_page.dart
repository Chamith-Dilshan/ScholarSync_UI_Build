import 'package:flutter/material.dart';
// import 'package:scholars_mobileapp/common/button_icon.dart';
import 'package:scholars_mobileapp/common/nav_bar.dart';
import 'package:scholars_mobileapp/constants/icon_constants.dart';
import 'package:scholars_mobileapp/theme/palette.dart';
import 'package:scholars_mobileapp/common/custom_textfield.dart';
import 'package:scholars_mobileapp/constants/ui_constants.dart';
import 'package:scholars_mobileapp/features/view/login_page.dart';


class NotificationsPage extends StatelessWidget {
const NotificationsPage({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
        titelCenter: false,
        backIcon: IconConstants.hamburgerMenuIcon,
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
              'Today',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "inter",
                color: Palette.textColor,
              ),
            ),
            const SizedBox(height: 10),
//Notification 01
       Center(
              child: CustomTextField(
                firstLine: "Lecture hall allocation",
                secondPartFirstline: "has been updated",
                thirdLine: "20 minutes ago",
                firstLineStyle: const TextStyle(fontSize: 12, color: Palette.textColor),
                thirdLineStyle: const TextStyle(fontSize: 9, color: Palette.lightTextcolor),
                secondPartFirstLineStyle: const TextStyle(fontWeight: FontWeight.bold),
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
          const SizedBox(height: 20),
//Notification 02
        const Text(
              'Yesterday',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "inter",
                color: Palette.textColor,
              ),
            ), 
    Center(
              child: CustomTextField(
                firstLine: "There are upcoming",
                secondPartFirstline: "lectures",
                thirdLine: "30 minutes ago",
                firstLineStyle: const TextStyle(fontSize: 12, color: Palette.textColor),
                thirdLineStyle: const TextStyle(fontSize: 9, color: Palette.lightTextcolor),
                secondPartFirstLineStyle: const TextStyle(fontWeight: FontWeight.bold),
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
          const SizedBox(height: 20),

          //Notification 03
        const Text(
              'Previous',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "inter",
                color: Palette.textColor,
              ),
            ),

    ],)
   ),

  bottomNavigationBar: NavBar(

          onItemSelected: (int index) {

          },
        ),
      );

  }
}