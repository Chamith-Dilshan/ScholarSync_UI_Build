
// import 'package:flutter/material.dart';
// import 'package:scholars_mobileapp/common/button_icon.dart';
// import 'package:scholars_mobileapp/common/nav_bar.dart';
// import 'package:scholars_mobileapp/constants/icon_constants.dart';
// import 'package:scholars_mobileapp/theme/palette.dart';

// class AuthField extends StatelessWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final double fontSize;
//   final bool? hideText;
//   final String? frontIcon;
//   final String? backIcon;

//    const AuthField({
//     Key? key,
//     required this.controller,
//     required this.hintText,
//     required this.fontSize,
//     this.hideText,
//     this.frontIcon,
//     this.backIcon,
//   }) : super(key: key);

<<<<<<< Updated upstream


//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       obscureText: hideText ?? false,
//       style: TextStyle(fontSize: fontSize),
//       decoration: InputDecoration(
//         hintText: hintText,
//         prefixIcon: frontIcon != null ? const Icon(Icons.ac_unit) : null,
//         suffixIcon: backIcon != null ? const Icon(Icons.ac_unit) : null,
//       ),
//     );
//   }
// }

//   class NotificationsPage extends StatelessWidget {
//   const NotificationsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color(0xFFFBFBFB),
//         appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text(
//           'Notifications',
//             style: TextStyle(
//             fontFamily: 'Inter',
//             fontSize: 22,
//             fontWeight: FontWeight.w600,
//             color: Color(0xFF181818),
//           ),
//         ),
//         actions: [
//           ButtonIcon(
//           onTap: () {}, 
//           icon: IconConstants.hamburgerMenuIcon,
//           backgroundColor: Palette.lightBackgroundColor,
//           iconColor: Palette.darkGreenColor,
//           size: 50.0,
//         ),
//         ],
//       ),
//       body: const SingleChildScrollView(
  
//       ),

//   bottomNavigationBar: NavBar(
//           onItemSelected: (int index) {
//             // Handle navigation or actions based on the selected index
//             // For example
//           },
//         ),
//       );
=======
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
>>>>>>> Stashed changes
    
//   }
// }

// void main() {
<<<<<<< Updated upstream
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Notifications Page',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
=======
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: AppThemeLight.theme,
//       debugShowCheckedModeBanner: false ,
>>>>>>> Stashed changes
//       home: const NotificationsPage(),
//     );
//   }
// }