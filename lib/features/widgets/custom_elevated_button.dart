import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final EdgeInsets padding;

  const CustomElevatedButton({
    super.key,
    required this.label,
    this.onPressed,
    this.backgroundColor = Colors.blue, // You can provide a default color here.
    this.borderRadius = const BorderRadius.all(Radius.circular(18)),
    this.padding = const EdgeInsets.symmetric(horizontal: 34),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        padding: padding,
        backgroundColor: backgroundColor,
      ),
      child: Text(label),
    );
  }
}
