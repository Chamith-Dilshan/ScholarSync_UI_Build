import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholars_mobileapp/common/search_bar_2.dart';
import 'package:scholars_mobileapp/features/widgets/text_form_field.dart';
import 'package:scholars_mobileapp/constants/ui_constants.dart';
import 'package:scholars_mobileapp/features/view/login_page.dart';
import 'package:scholars_mobileapp/features/widgets/kuppi_widget.dart';
import 'package:scholars_mobileapp/constants/image_constants.dart';
import 'package:scholars_mobileapp/features/widgets/reusable_form_dialog.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

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
                physics: const BouncingScrollPhysics(),
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
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: PaletteLightMode.secondaryGreenColor,
          tooltip: 'Increment',
          onPressed: () {
            _showFormDialog(context);
          },
          child: SvgPicture.asset(
            IconConstants.addButtonIcon,
            colorFilter: const ColorFilter.mode(
              PaletteLightMode.whiteColor,
              BlendMode.srcIn,
            ),
            width: 25,
            height: 25,
          ),
        ));
  }
}

void _showFormDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ReusableFormDialog(
        title: 'Add New Kuppi Session',
        buttonLabel: 'Add',
        formFields: [
          const SizedBox(height: 5),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(11, 24, 43, 0.08),
                      offset: Offset(8, 8),
                      blurRadius: 24,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: PaletteLightMode.secondaryTextColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.camera_alt,
                    color: PaletteLightMode.whiteColor,
                  ),
                  onPressed: () {
                    // Implement the camera button action here
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          ReusableTextField(
            labelText: 'Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a name';
              }
              return null;
            },
            onSaved: (value) {},
          ),
          ReusableTextField(
            labelText: 'Date',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a name';
              }
              return null;
            },
            onSaved: (value) {},
          ),
          ReusableTextField(
            labelText: 'Conducted by',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the name of the conductor';
              }
              return null;
            },
            onSaved: (value) {},
          ),
          ReusableTextField(
            labelText: 'Link to join',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the link to join';
              }
              return null;
            },
            onSaved: (value) {},
          ),
        ],
        onSubmit: (formData) {},
      );
    },
  );
}
