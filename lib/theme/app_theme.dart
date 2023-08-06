import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

//use this class to change the theme color of the app
class AppThemeLight{
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: PaletteLightMode.backgroundColor,   
    colorScheme: const ColorScheme.light(primary:PaletteLightMode.primaryGreenColor ),

    appBarTheme: const AppBarTheme(
      backgroundColor: PaletteLightMode.backgroundColor,
      elevation: 0,
    ),

  );
}

class AppThemeDark{
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: PaletteLightMode.backgroundColor,

    appBarTheme: const AppBarTheme(
      backgroundColor: PaletteLightMode.backgroundColor,
      elevation: 0,
    ),
  );
}