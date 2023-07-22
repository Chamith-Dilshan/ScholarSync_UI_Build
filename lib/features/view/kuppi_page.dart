import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/search_bar.dart';
import 'package:scholars_mobileapp/constants/ui_constants.dart';
import 'package:scholars_mobileapp/features/view/login_page.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

import '../../constants/icon_constants.dart';

class KuppiPage extends StatelessWidget {
  const KuppiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
        title: 'Kuppi',
        titleFontSize: 18,
        titleFontWeight: FontWeight.w600,
        titleCenter: true,
        iconColor: Palette.lightGreenColor,
        frontIcon: IconConstants.leftArrowIcon,
        backIcon: IconConstants.hamburgerMenuIcon,
        frontIconToolTip: 'Back to login page',
        onFrontIconButtonpressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LogInPage()),
          );
        },
        onBackIconButtonpressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LogInPage()),
          );
        },
      ),
      body: Center(),
    );
  }
}
