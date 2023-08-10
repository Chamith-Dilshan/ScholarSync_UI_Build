import 'package:flutter/material.dart';
import 'package:scholarsync/common/button_icon.dart';

class CustomTextField extends StatelessWidget {
  final String firstLine;
  final String? secondPartFirstline;
  final String? secondLine;
  final String? thirdLine;
  final TextStyle firstLineStyle;
  final TextStyle? secondLineStyle;
  final TextStyle? thirdLineStyle;
  final TextStyle? secondPartFirstLineStyle;

  final TextEditingController controller;
  final VoidCallback? ontapBox;
  final VoidCallback? ontapFrontIcon;
  final VoidCallback? ontapBackIcon;
  final String? frontIcon;
  final String? backIcon;
  final double? frontIconScale;
  final double? backIconScale;
  final Color? frontIconColor;
  final Color? backIconColor;
  final Color borderColor;
  final double borderWidth;
  final Color? backgroundColor;
  final double boxwidth;
  final double boxheight;
  final double borderRadius;
  final double padding;

  const CustomTextField({super.key,
    required this.firstLine,
    this.secondPartFirstline,
    this.secondLine,
    this.thirdLine,
    required this.firstLineStyle,
    this.secondLineStyle,
    this.thirdLineStyle,
    this.secondPartFirstLineStyle,
    required this.controller,
    this.ontapBox,
    this.ontapFrontIcon,
    this.ontapBackIcon,
    this.frontIcon,
    this.backIcon,
    this.frontIconScale,
    this.backIconScale,
    this.frontIconColor,
    this.backIconColor,
    required this.borderColor,
    required this.borderWidth,
    this.backgroundColor,
    required this.boxwidth,
    required this.boxheight,
    required this.borderRadius,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontapBox,
      child: Container(
        width: boxwidth,
        height: boxheight,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
          border: Border.all(color: borderColor, width: borderWidth),
        ),
        child: Row(
          children: [ 
            if (frontIcon != null)
              ButtonIcon(
              onTap: ontapFrontIcon,
              icon: frontIcon,
              iconColor: frontIconColor,
              size: frontIconScale,
            ),
            const SizedBox(width: 8),          
            Expanded(
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: [               
                      if(frontIcon != null)                       
                      TextSpan(                
                        text: firstLine,
                        style: firstLineStyle,
                        children: [
                          if (secondPartFirstLineStyle != null) ...[
                            const TextSpan(text: ' '),
                            TextSpan(text:secondPartFirstline, style: secondPartFirstLineStyle),
                          ],
                        ],
                      ),                     
                      if (secondLine != null) ...[
                        const TextSpan(text: '\n'),
                        TextSpan(text: secondLine, style: secondLineStyle),
                      ],
                      if (thirdLine != null) ...[
                        const TextSpan(text: '\n'),
                        TextSpan(text: thirdLine, style: thirdLineStyle),
                      ],
                    ],
                  ),
                ),
              ),
            ),
            if (backIcon != null)
              ButtonIcon(
              onTap: ontapBackIcon,
              icon: backIcon,
              iconColor: backIconColor,
              size: backIconScale,
            ),
            const SizedBox(width: 8), 
          ],
        ),
      ),
    );
  }
}
