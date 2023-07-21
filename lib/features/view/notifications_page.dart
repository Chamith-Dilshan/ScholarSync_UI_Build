
import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/nav_bar.dart';
import 'package:scholars_mobileapp/constants/icon_constants.dart';
import 'package:scholars_mobileapp/features/view/login_page.dart';
import 'package:scholars_mobileapp/theme/palette.dart';
import 'package:scholars_mobileapp/common/custom_textfield.dart';
import 'package:scholars_mobileapp/constants/ui_constants.dart';
import 'package:scholars_mobileapp/theme/app_theme.dart';
// import 'package:scholars_mobileapp/features/view/home_page.dart';



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
      
   //body
   body: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(children: [
      const Align(alignment: Alignment.topCenter),
//Notification 01
      CustomTextField(firstLine: "First Line Text",
          secondPartFirstline: "Second Part Text",
          secondLine: "Second Line Text",
          thirdLine: "Third Line Text",
          firstLineStyle: const TextStyle(fontSize: 12, color: Colors.black),
          secondLineStyle: const TextStyle(fontSize: 10, color: Colors.blue),
          thirdLineStyle: const TextStyle(fontSize: 9, color: Colors.green),
          secondPartFirstLineStyle: const TextStyle(fontWeight: FontWeight.bold),
          controller: TextEditingController(),
          ontapBox: () {
            // onTap function for the Box
          },
          ontapFrontIcon: (){
            //onTap funtion for FrontIcon
          },
          ontapBackIcon: () {
            //ontap funtion for backIcon
          },
          frontIcon: IconConstants.bellFilledIcon,
          backIcon: IconConstants.moonIcon,
          frontIconScale: 40,
          backIconScale: 40,
          borderColor: Colors.transparent,
          borderWidth: 0,
          backgroundColor: Palette.lightBackgroundColor,
          boxwidth: 400,
          boxheight: 67,
          padding: 16,  ),
          const SizedBox(height: 10),
//Notification 02
  CustomTextField(firstLine: "First Line Text",
          secondPartFirstline: "Second Part Text",
          secondLine: "Second Line Text",
          thirdLine: "Third Line Text",
          firstLineStyle: const TextStyle(fontSize: 12, color: Colors.black),
          secondLineStyle: const TextStyle(fontSize: 10, color: Colors.blue),
          thirdLineStyle: const TextStyle(fontSize: 9, color: Colors.green),
          secondPartFirstLineStyle: const TextStyle(fontWeight: FontWeight.bold),
          controller: TextEditingController(),
          ontapBox: () {
            // onTap function for the Box
          },
          ontapFrontIcon: (){
            //onTap funtion for FrontIcon
          },
          ontapBackIcon: () {
            //ontap funtion for backIcon
          },
          frontIcon: IconConstants.bellFilledIcon,
          backIcon: IconConstants.moonIcon,
          frontIconScale: 40,
          backIconScale: 40,
          borderColor: Colors.transparent,
          borderWidth: 0,
          backgroundColor: Palette.lightBackgroundColor,
          boxwidth: 400,
          boxheight: 67,
          padding: 16,  ),
          const SizedBox(height: 10),
    ],)

  
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

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeLight.theme,
      debugShowCheckedModeBanner: false ,
      home: const NotificationsPage(),
    );
  }
}