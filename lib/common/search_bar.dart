import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/icon_constants.dart';
import '../theme/palette.dart';

class MySearchBar extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;

  const MySearchBar({super.key, 
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: PaletteLightMode.backgroundColor,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            prefixIcon: SvgPicture.asset(IconConstants.searchIcon),
          ),
        ),
      ),
    );
  }
}

/*If you use this search bar you can write below code in the relevant file

MySearchBar(
              hintText: 'Search',
              onChanged: (query) {
                // Handle search query change
              },
            ),
*/
