import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/search_bar_2.dart';
import 'package:scholars_mobileapp/constants/ui_constants.dart';
import 'package:scholars_mobileapp/features/view/login_page.dart';
import 'package:scholars_mobileapp/features/widgets/kuppi_widget.dart';
import 'package:scholars_mobileapp/constants/image_constants.dart';

import '../../constants/icon_constants.dart';

class KuppiPage extends StatelessWidget {
  const KuppiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
        title: 'Kuppi Sessions',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        titleCenter: true,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomSearchBar(
            hint: 'Search for kuppi sessions...',
            onSearchSubmitted: (query) {},
          ),
          const SizedBox(height: 18),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
              children: const [
                ImageWithTextWidget(
                  title: 'MICROPYTHON',
                  subtitle: 'by ATD Gamage',
                  date: '30th July, 2023',
                  imagePath: ImageConstants.kuppi1,
                ),
                SizedBox(height: 20),
                ImageWithTextWidget(
                  title: 'Mathematics for Computing',
                  subtitle: 'Subtitle 2',
                  date: '30th July, 2023',
                  imagePath: ImageConstants.kuppi1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
