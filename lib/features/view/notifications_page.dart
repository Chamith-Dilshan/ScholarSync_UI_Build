
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
    
//   }
// }

// void main() {
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
//       home: const NotificationsPage(),
//     );
//   }
// }