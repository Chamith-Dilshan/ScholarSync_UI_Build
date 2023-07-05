import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double fontsize;

  const AuthField({super.key,
    required this.controller,
    required this.hintText,
    required this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.all(22),
        hintText: hintText,
        hintStyle: TextStyle(fontSize:fontsize,)
      ),
    );
  }
}