import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double fontSize;
  final bool? hideText;
  final String? frontIcon;
  final String? backIcon;

  const AuthField({super.key,
    required this.controller,
    required this.hintText,
    required this.fontSize,
    this.hideText,
    this.frontIcon,
    this.backIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: hideText ?? false,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Palette.lightGreenColor)
        ) ,
        contentPadding:const EdgeInsets.all(22),
        hintText: hintText,
        hintStyle: TextStyle(fontSize:fontSize,),
        prefixIcon: frontIcon != null
          ? Transform.scale(
            scale: 0.6,
            child: SvgPicture.asset( frontIcon!),
        ):null,
        
        suffixIcon: backIcon != null
          ? Transform.scale(
            scale: 0.6,
            child: SvgPicture.asset(backIcon!),
          ):null, 
      ),
    );
  }
}