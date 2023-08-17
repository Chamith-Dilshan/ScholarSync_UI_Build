import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholarsync/common/search_bar.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/constants/image_constants.dart';
import '../../common/text_container.dart';
import '../../theme/palette.dart';
import '../widgets/carousel.dart';
import '../widgets/image_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textField1 = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    textField1.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
                  colorFilter:const ColorFilter.mode(
                    PaletteLightMode.secondaryGreenColor, 
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 5,),
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
              colorFilter:const ColorFilter.mode(
                PaletteLightMode.secondaryGreenColor, 
                BlendMode.srcIn,
              ),
              width:40,
              height:40,
            ),
            tooltip: 'Menu',
            onPressed:(){
              //Open the Sidebar
            },
          ),
        ],
      ),

      body: Padding(
        padding:const EdgeInsets.all(8),
        child: SingleChildScrollView(
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
              const SizedBox(height: 5,),

              //carousel
              const Carousel(
                imageList: [
                  ImageConstants.kuppi1,
                  ImageConstants.aiesec1,
                  ImageConstants.aiesec2,
                  ImageConstants.aiesec3,
                  ImageConstants.aiesec2,
                ],
              ),
              const SizedBox(height: 5,),

              //text
              TextContainer(
                fontText:'Kuppi Sessions',
                secondText: 'view all',
                onTap: (){
                  //onTap funtion for the text
                },
              ),
              const SizedBox(height: 5,),

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
              const SizedBox(height: 5,),

              //text
              TextContainer(
                fontText:'Clubs & Organizations',
                secondText: 'view all',
                onTap: (){
                  //onTap funtion for the text
                },
              ),
              const SizedBox(height: 5,),

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
              const SizedBox(height: 10,),

              //text
              const TextContainer(
                fontText:'Today’s Lectures',
              ),
              const SizedBox(height: 5,),

            // CustomTextField(
            //   firstLine: "First Line Text",
            //   secondPartFirstline: "Second Part Text",
            //   secondLine: "Second Line Text",
            //   thirdLine: "Third Line Text",
            //   firstLineStyle: const TextStyle(fontSize: 18, color: Colors.black),
            //   secondLineStyle: const TextStyle(fontSize: 16, color: Colors.blue),
            //   thirdLineStyle: const TextStyle(fontSize: 14, color: Colors.green),
            //   secondPartFirstLineStyle: const TextStyle(fontWeight: FontWeight.bold),
            //   controller: TextEditingController(),
            //   ontapBox: () {
            //     // onTap function for the Box
            //   },
            //   ontapFrontIcon: (){
            //     //onTap funtion for FrontIcon
            //   },
            //   ontapBackIcon: () {
            //     //ontap funtion for backIcon
            //   },
            //   frontIcon: IconConstants.bellFilledIcon,
            //   backIcon: IconConstants.moonIcon,
            //   frontIconScale: 50,
            //   backIconScale: 50,
            //   borderColor: PaletteLightMode.titleColor,
            //   borderWidth: 10,
            //   backgroundColor: PaletteLightMode.backgroundColor,
            //   boxwidth: 350,
            //   boxheight: 300,
            //   borderRadius:30,
            //   padding: 16,  
            //   )
            ],
          ),
        ),
      ),
    );
  }
}