import 'package:flutter/material.dart';
import 'package:scholarsync/constants/image_constants.dart';
import 'package:scholarsync/theme/palette.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 220,
      decoration: BoxDecoration(
        color: PaletteLightMode.primaryGreenColor,
        border: Border.all(
          color: PaletteLightMode.primaryGreenColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:AssetImage(ImageConstants.img1), // Add your image path here
                    ),
                    Container(
                      width: 32, // Set the desired width for the container
                      height: 32, // Set the desired height for the container
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: PaletteLightMode.secondaryGreenColor, // Choose the background color you want for the camera icon
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Handle camera icon pressed (profile edit page)
                        },
                        iconSize: 18, // Set the desired icon size
                        icon: const Icon(
                          //have to add a camera icon
                          //icon: SvgPicture.asset(IconConstants.cameraIcon),
                          Icons.camera_alt,
                          color: PaletteLightMode.whiteColor, 
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'ATD Gamage - 24598',
                  style: TextStyle(
                    fontSize: 20,
                    color: PaletteLightMode.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Bsc.(Hons) in Software Engineering - 24598',
                  style: TextStyle(
                    color: PaletteLightMode.whiteColor,
                    fontSize: 14,
                  ),
                ),
                const Text(
                  'Batch - 21.1',
                  style: TextStyle(
                    color: PaletteLightMode.whiteColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}