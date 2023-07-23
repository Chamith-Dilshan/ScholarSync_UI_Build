import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final double buttonSize;
  final IconData icon;
  final Color iconColor;
  final Color buttonColor;

  const CircularIconButton({
    Key? key,
    required this.buttonSize,
    required this.icon,
    required this.iconColor,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonSize,
      height: buttonSize,
      decoration: BoxDecoration(
        color: buttonColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: buttonSize * 0.6, // Adjust the icon size as needed
      ),
    );
  }
}
