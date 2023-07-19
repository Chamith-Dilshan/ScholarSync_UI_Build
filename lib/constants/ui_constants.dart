import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

class UIConstants {
  static AppBar appBar({
    VoidCallback? onFrontIconButtonpressed,
    String? frontIcon,
    String? frontIconToolTip,
    required bool titelCenter,
    required String backIcon,
    required VoidCallback onBackIconButtonpressed,
    }){

    return AppBar(
      title: const Text('Hello'),
      titleTextStyle: const TextStyle(
        color: Palette.darkBackgroundColor,
        fontSize: 22,
      ),
      centerTitle: titelCenter,
      leading: frontIcon != null
          ? IconButton(
              icon: SvgPicture.asset(frontIcon),
              color: Palette.darkBackgroundColor,
              iconSize: 30,
              tooltip: frontIconToolTip,
              onPressed: onFrontIconButtonpressed,
            )
          : null,
      actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(backIcon),
            color: Palette.darkBackgroundColor,
            iconSize: 30,
            tooltip: 'Menu',
            onPressed:onBackIconButtonpressed,
          ),
        ],
    );
  }
}