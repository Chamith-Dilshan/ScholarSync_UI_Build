import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/theme/pallete.dart';

//use this class to change the theme color of the app
class AppThemeLight{
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Pallete.lightbackgroundColor,

    appBarTheme: const AppBarTheme(
      backgroundColor: Pallete.lightbackgroundColor,
      elevation: 0,
    ),

  );
}

class AppThemeDark{
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.darkbackgroundColor,

    appBarTheme: const AppBarTheme(
      backgroundColor: Pallete.darkbackgroundColor,
      elevation: 0,
    ),
  );
}