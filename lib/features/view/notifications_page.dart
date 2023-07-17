

// import 'package:flutter/material.dart';

// class AuthField extends StatelessWidget {
//   final TextEditingController controller;
//   final notificationController = TextEditingController();
//   final String hintText;
//   final double fontSize;
//   final bool? hideText;
//   final String? frontIcon;
//   final String? backIcon;

//    AuthField({
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

// class NotificationsPage extends StatelessWidget {
//   const NotificationsPage({Key? key}) : super(key: key);

//   String getTimeAgo() {
//     // Add your logic to calculate the time difference and return a formatted string
//     // Example: return '20 minutes ago';
//     // You can use packages like `timeago` to format the time difference
//     return '20 minutes ago';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFBFBFB),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text(
//           'Notifications',
//           style: TextStyle(
//             fontFamily: 'Inter',
//             fontSize: 22,
//             fontWeight: FontWeight.w600,
//             color: Color(0xFF181818),
//           ),
//         ),
//         actions: [
//           IconButton(
//             color: const Color(0xFF181818),
//             icon: const Icon(Icons.menu),
//             onPressed: () {
//               // Handle hamburger menu button press
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               const Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   'Today',
//                   style: TextStyle(
//                     color: Color(0xFF83898F),
//                     fontSize: 12,
//                   ),
//                 ),
//               ),




//               const SizedBox(height: 10),
//               Container(
//                 width: 371,
//                 height: 63.16,
//                 alignment: Alignment.topLeft,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Icon(
//                         Icons.calendar_today,
//                         color: Color.fromARGB(255, 5, 5, 5),
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Sample notification message',
//                             style: TextStyle(
//                               color: Color(0xFF3A3F47),
//                               fontSize: 11,
//                             ),
//                           ),
//                           const SizedBox(height: 5),
//                           Text(
//                             getTimeAgo(),
//                             style: const TextStyle(
//                               color: Color(0xFF3A3F47),
//                               fontSize: 11,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Icon(
//                         Icons.close,
//                         color: Color(0xFF83898F),
//                         size: 17,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),




//               const SizedBox(height: 10),
//               // Add more notifications here
              
//             ],
//           ),
//         ),
//       ),

//       bottomNavigationBar: Container(
//         color: const Color(0xFF132A13),
//         padding: const EdgeInsets.symmetric(vertical: 8),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             IconButton(
//               icon: Stack(
//                 children: [
//                   Container(
//                     width: 30,
//                     height: 30,
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const Positioned(
//                     left: 5,
//                     top: 5,
//                     child: Icon(
//                       Icons.add,
//                       color: Color(0xFF132A13),
//                     ),
//                   ),
//                 ],
//               ),
//               onPressed: () {
//                 // Handle Add button press
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.home),
//               onPressed: () {
//                 // Handle Home button press
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.calendar_today),
//               onPressed: () {
//                 // Handle Calendar button press
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.notifications),
//               onPressed: () {
//                 // Handle Notifications button press
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.person),
//               onPressed: () {
//                 // Handle My Profile button press
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }