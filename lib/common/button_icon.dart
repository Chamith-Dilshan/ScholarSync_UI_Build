import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonIcon extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
    final bool isSelected; // Add isSelected property
  

  const ButtonIcon({
    required this.onTap,
    required this.icon,
    this.backgroundColor = Colors.transparent,
    this.iconColor = Colors.black,
    this.size = 48.0,
    this.isSelected = false, // Provide a default value for isSelected
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: IconButton(
        onPressed: onTap,
       icon: SvgPicture.asset(
          icon,
          width: size * 0.6,
          height: size * 0.6,
          color : iconColor,
      ),
    ),
    );
    
  }
}