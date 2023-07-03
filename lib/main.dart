import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/theme/app_theme.dart';
import 'features/view/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeLight.theme,
      home: const LogInPage(),
    );
  }
}
