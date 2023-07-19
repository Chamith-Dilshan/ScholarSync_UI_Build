import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/features/view/home_page.dart';
import 'package:scholars_mobileapp/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeLight.theme,
      debugShowCheckedModeBanner: false ,
      home: const HomePage(),
    );
  }
}
