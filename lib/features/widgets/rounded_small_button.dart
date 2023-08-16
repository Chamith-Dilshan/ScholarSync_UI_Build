import 'package:flutter/material.dart';

class RoundedSmallbutton extends StatelessWidget {
  final VoidCallback onTap;
  final String lable;
  final Color backgroundColor;
  final Color textColor;
  final double fontsize;

  const RoundedSmallbutton({super.key,
    required this.onTap,
    required this.lable,
    required this.backgroundColor,
    required this.textColor,
    required this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(lable,style: TextStyle(color: textColor, fontSize: fontsize),),
      backgroundColor: backgroundColor,
      labelPadding: const EdgeInsets.symmetric(horizontal: 20, vertical:5, ),
    );
  }
}