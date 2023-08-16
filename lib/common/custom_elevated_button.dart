import 'package:flutter/material.dart';
import 'package:scholarsync/theme/palette.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final double textSize;
  final double height;

  const CustomElevatedButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.backgroundColor = PaletteLightMode.secondaryGreenColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.padding = const EdgeInsets.symmetric(horizontal: 34, vertical: 8),
    this.textSize = 16,
    this.height = 35,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          padding: padding,
          backgroundColor: backgroundColor,
        ),
        child: Text(
          label,
          style: TextStyle(fontSize: textSize),
        ),
      ),
    );
  }
}
