import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/custom_textfield.dart';
import 'package:scholars_mobileapp/theme/palette.dart';
import '../../constants/icon_constants.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomTextField(
          firstLine: "First Line Text",
          secondPartFirstline: "Second Part Text",
          secondLine: "Second Line Text",
          thirdLine: "Third Line Text",
          firstLineStyle: const TextStyle(fontSize: 18, color: Colors.black),
          secondLineStyle: const TextStyle(fontSize: 16, color: Colors.blue),
          thirdLineStyle: const TextStyle(fontSize: 14, color: Colors.green),
          secondPartFirstLineStyle: const TextStyle(fontWeight: FontWeight.bold),
          controller: TextEditingController(),
          ontap: () {
          // Your onTap function

          },
          frontIcon: IconConstants.bellFilledIcon,
          backIcon: IconConstants.moonIcon,
          frontIconScale: 50,
          backIconScale: 50,
          borderColor: Palette.darkBackgroundColor,
          borderWidth: 10,
          backgroundColor: Palette.lightBackgroundColor,
          boxwidth: 350,
          boxheight: 300,
          padding: 16,  
          )
        ),
    );
  }
}