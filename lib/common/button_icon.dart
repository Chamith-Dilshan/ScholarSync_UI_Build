import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonIcon extends StatelessWidget {
  final VoidCallback? onTap;
  final String? icon;
  final Color backgroundColor;
  final Color? iconColor;
  final double? size;
  final bool isSelected; // Add isSelected property
  

  const ButtonIcon({
    this.onTap,
    this.icon,
    this.backgroundColor = Colors.transparent,
    this.iconColor,
    this.size,
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
          icon: icon != null ? SvgPicture.asset(
          icon!,
          width: size,
          height: size,
          colorFilter: ColorFilter.mode(
            iconColor ?? Colors.black, 
            BlendMode.srcIn,
          ),
      ): const SizedBox.shrink(),
    ),
    );
    
  }
}