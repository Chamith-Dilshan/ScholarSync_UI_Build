import 'package:flutter/material.dart';
import 'package:scholars_mobileapp/common/circular_icon_button.dart';
import 'package:scholars_mobileapp/constants/icon_constants.dart';
import 'package:scholars_mobileapp/constants/ui_constants.dart';
import 'package:scholars_mobileapp/constants/image_constants.dart';
import 'package:scholars_mobileapp/theme/palette.dart';

class ClubProfilePage extends StatefulWidget {
  const ClubProfilePage({Key? key}) : super(key: key);

  @override
  State<ClubProfilePage> createState() => _ClubProfilePageState();
}

class _ClubProfilePageState extends State<ClubProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(
        title: 'AIESEC NSBM',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        titleCenter: false,
        backIcon: IconConstants.hamburgerMenuIcon,
        onBackIconButtonpressed: () {
          /* Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LogInPage()),
          );*/
        },
      ),
      body: Column(
        children: [
          _buildImageBannerWithCircularImage(),
          const Text(
            'AIESEC in NSBM',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: PaletteLightMode.textColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageBannerWithCircularImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        width: 370,
        height: 200,
        child: Stack(
          children: [
            _buildImageBannerWithCircularIconButton(),
            Align(
              alignment: Alignment.bottomCenter,
              child: _buildCircularImage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageBannerWithCircularIconButton() {
    return Stack(
      children: [
        _buildImageBanner(),
        const Positioned(
          bottom: 10,
          right: 10,
          child: CircularIconButton(
            buttonSize: 20,
            icon: Icons.camera_alt,
            iconColor: Colors.white,
            buttonColor: PaletteLightMode.secondaryGreenColor,
          ),
        ),
      ],
    );
  }

  Widget _buildImageBanner() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        ImageConstants.clubBanner1,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildCircularImage() {
    const imageSize = 75.0;
    const buttonSize = 20.0;

    return Stack(
      children: [
        Container(
          width: imageSize,
          height: imageSize,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(ImageConstants.clubDP1),
              radius: imageSize / 2,
            ),
          ),
        ),
        const Positioned(
          bottom: -(buttonSize / 1000),
          right: -(buttonSize / 1000),
          child: CircularIconButton(
            buttonSize: buttonSize,
            icon: Icons.camera_alt,
            iconColor: Colors.white,
            buttonColor: PaletteLightMode.secondaryGreenColor,
          ),
        ),
      ],
    );
  }
}
