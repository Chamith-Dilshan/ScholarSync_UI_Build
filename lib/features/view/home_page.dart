import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholarsync/common/search_bar.dart';
import 'package:scholarsync/common/sidebar.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/constants/image_constants.dart';
import 'package:scholarsync/features/view/my_profile_page.dart';
import '../../common/text_container.dart';
import '../../theme/palette.dart';
import '../widgets/carousel.dart';
import '../widgets/image_row.dart';
import 'package:scholarsync/common/drawer_menu.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textField1 = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textField1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Sidebar(),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi, ATD Gamage',
              style: TextStyle(
                color: PaletteLightMode.titleColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  IconConstants.graduationHatIcon,
                  width: 20,
                  height: 20,
                  colorFilter: const ColorFilter.mode(
                    PaletteLightMode.secondaryGreenColor,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'NSBM Green University',
                  style: TextStyle(
                    color: PaletteLightMode.secondaryGreenColor,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
        titleTextStyle: const TextStyle(
          color: PaletteLightMode.titleColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              IconConstants.hamburgerMenuIcon,
              colorFilter: const ColorFilter.mode(
                PaletteLightMode.secondaryGreenColor,
                BlendMode.srcIn,
              ),
              width: 40,
              height: 40,
            ),
            tooltip: 'Menu',
            onPressed: () {
 

            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //searchbar
              CustomSearchBar(
                hint: 'Search for students and clubs...',
                onSearchSubmitted: (value) {
                  //Search funtion
                },
              ),
              const SizedBox(
                height: 5,
              ),

              //carousel
              Carousel(
                imageList: const [
                  ImageConstants.aiesec3,
                  ImageConstants.aiesec1,
                  ImageConstants.aiesec2,
                  ImageConstants.aiesec3,
                  ImageConstants.aiesec2,
                ],
                onPressedDeleteButton: () {},
              ),
              const SizedBox(
                height: 5,
              ),

              //text
              TextContainer(
                fontText: 'Kuppi Sessions',
                secondText: 'view all',
                onTap: () {
                  //onTap funtion for the text
                },
              ),
              const SizedBox(
                height: 5,
              ),

              //imageRow
              ImageRow(
                containerSize: MediaQuery.of(context).size.width * 0.4,
                isCircle: false,
                imagePathList: const [
                  ImageConstants.img1,
                  ImageConstants.img1,
                  ImageConstants.img1,
                  ImageConstants.img1,
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              //text
              TextContainer(
                fontText: 'Clubs & Organizations',
                secondText: 'view all',
                onTap: () {
                  //onTap funtion for the text
                },
              ),
              const SizedBox(
                height: 5,
              ),

              //imageRow
              ImageRow(
                containerSize: MediaQuery.of(context).size.width * 0.2,
                isCircle: true,
                imagePathList: const [
                  ImageConstants.img1,
                  ImageConstants.img1,
                  ImageConstants.img1,
                  ImageConstants.img1,
                  ImageConstants.img1,
                ],
                textList: const [
                  'Hello1',
                  'NSBM',
                  'hello',
                  'reddathama',
                  'redda',
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
