import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholarsync/theme/palette.dart';

class UIConstants {
  static AppBar appBar({
    VoidCallback? onFrontIconButtonpressed,
    String? frontIcon,
    String? frontIconToolTip,
    required String title,
    required double fontSize,
    required FontWeight fontWeight,
    required bool titleCenter,
    required String backIcon,
    required VoidCallback onBackIconButtonpressed,
    }){

    return AppBar(
      title: Text(title),
      titleTextStyle: TextStyle(
        color: PaletteLightMode.titleColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      centerTitle: titleCenter,
      leading: frontIcon != null
          ? IconButton(
              icon: SvgPicture.asset(
                frontIcon,
                colorFilter:const ColorFilter.mode(
                  PaletteLightMode.secondaryGreenColor, 
                  BlendMode.srcIn,
                ),
                width:40,
                height:40,
                ),
              tooltip: frontIconToolTip,
              onPressed: onFrontIconButtonpressed,
            )
          : null,
      actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              backIcon,
              colorFilter:const ColorFilter.mode(
                PaletteLightMode.secondaryGreenColor, 
                BlendMode.srcIn,
              ),
              width:40,
              height:40,
            ),
            tooltip: 'Menu',
            onPressed:onBackIconButtonpressed,
          ),
        ],
    );
  }
}