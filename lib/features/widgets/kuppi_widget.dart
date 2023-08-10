import 'package:flutter/material.dart';
import 'package:scholarsync/theme/palette.dart';

class ImageWithTextWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final String date;

  const ImageWithTextWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.date,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ImageWithTextWidgetState createState() => _ImageWithTextWidgetState();
}

class _ImageWithTextWidgetState extends State<ImageWithTextWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: PaletteLightMode.whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: PaletteLightMode.shadowColor,
            offset: Offset(8, 8),
            blurRadius: 24,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.imagePath,
            width: 160,
            height: 160,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              widget.title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: PaletteLightMode.titleColor,
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: 1.5708, // 90 degrees in radians
                            child: PopupMenuButton<String>(
                              itemBuilder: (context) => [
                                const PopupMenuItem(
                                  value: 'option1',
                                  child: Text('Option 1'),
                                ),
                                const PopupMenuItem(
                                  value: 'option2',
                                  child: Text('Option 2'),
                                ),
                                // Add more options as needed
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      widget.subtitle,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: PaletteLightMode.secondaryTextColor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    widget.date,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: PaletteLightMode.secondaryGreenColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add your join button logic here
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 34),
                          backgroundColor: PaletteLightMode.secondaryGreenColor,
                        ),
                        child: const Text('Join'),
                      ),
                      const SizedBox(
                          width: 8), // Add some spacing between the buttons
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: PaletteLightMode.secondaryGreenColor,
                        ),
                      ),
                    ],
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
