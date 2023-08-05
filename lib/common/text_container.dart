import 'package:flutter/material.dart';
import '../theme/palette.dart';

class TextContainer extends StatelessWidget {
  final String fontText;
  final String? secondText;
  final VoidCallback? onTap;

  const TextContainer({
    required this.fontText,
    this.secondText,
    this.onTap,
    Key? key,
  }) : super(key: key);

  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: PaletteLightMode.titleColor,
  );

  static const TextStyle secondaryTextStyle = TextStyle(
    color: PaletteLightMode.secondaryGreenColor,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            fontText,
            style: titleTextStyle,
          ),
          if (secondText != null && onTap != null)
            TextButton(
              onPressed: onTap,
              child: Text(
                secondText!,
                style: secondaryTextStyle,
              ),
            ),
        ],
    );
  }
}
