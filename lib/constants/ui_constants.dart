import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

class UIConstants {
  static AppBar appBar({
    VoidCallback? onFrontIconButtonpressed,
    String? frontIcon,
    String? frontIconToolTip,
    required String title,
    required double fontSize,
    required FontWeight fontWeight,
    required bool titelCenter,
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
      centerTitle: titelCenter,
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