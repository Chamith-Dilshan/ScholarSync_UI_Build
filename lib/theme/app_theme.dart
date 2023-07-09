import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

//use this class to change the theme color of the app
class AppThemeLight{
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Palette.lightBackgroundColor,

    appBarTheme: const AppBarTheme(
      backgroundColor: Palette.lightBackgroundColor,
      elevation: 0,
    ),

  );
}

class AppThemeDark{
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Palette.darkBackgroundColor,

    appBarTheme: const AppBarTheme(
      backgroundColor: Palette.darkBackgroundColor,
      elevation: 0,
    ),
  );
}