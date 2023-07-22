import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/search_bar_2.dart';
import 'package:scholars_mobileapp/constants/ui_constants.dart';
import 'package:scholars_mobileapp/features/view/login_page.dart';

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
        titelCenter: true,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Call the CustomSearchBar here
            CustomSearchBar(
              hint: 'Search for kuppi sessions...',
              onSearchSubmitted: (query) {
                // Handle the search query here
              },
            ),
            const SizedBox(
                height:
                    20), // Add some spacing if needed between the search bar and other content
            const Text(
                'Other content goes here'), // Add other content as needed
          ],
        ),
      ),
    );
  }
}
