import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/search_bar_2.dart';
import 'package:scholars_mobileapp/constants/ui_constants.dart';
import 'package:scholars_mobileapp/features/view/login_page.dart';
import '../../constants/icon_constants.dart';
import '../../constants/image_constants.dart';
import '../../theme/palette.dart';
import '../widgets/kuppi_widget.dart';

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
                  subtitle: 'by ATD Gamage',
                  date: '30th July, 2023',
                  imagePath: ImageConstants.kuppi1,
                ),
              ],
            ),
          ),
          // White box with plus icon as a button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(11, 24, 43, 0.08),
                    offset: Offset(8, 8),
                    blurRadius: 24,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => LogInPage()),
                      // );
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: PaletteLightMode.secondaryGreenColor,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   // Add your bottom navigation bar items here
      // ),
    );
  }
}
