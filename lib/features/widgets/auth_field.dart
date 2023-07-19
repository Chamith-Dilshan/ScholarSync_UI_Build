import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double fontSize;
  final String frontIcon;

  const AuthField({super.key,
    required this.controller,
    required this.hintText,
    required this.fontSize,
    required this.frontIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Palette.lightGreenColor)
        ) ,
        contentPadding:const EdgeInsets.all(22),
        hintText: hintText,
        hintStyle: TextStyle(fontSize:fontSize,),
        prefixIcon: Transform.scale(
          scale: 0.6,
          child: SvgPicture.asset(frontIcon),
        )  
      ),
    );
  }
}