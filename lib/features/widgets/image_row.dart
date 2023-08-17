import 'package:flutter/material.dart';
import 'package:scholarsync/theme/palette.dart';

class ImageRow extends StatelessWidget {
  final double containerSize;
  final bool isCircle;
  final List<String> imagePathList;
  final List<String>? textList;

  const ImageRow({
    super.key,
    required this.containerSize,
    required this.isCircle,
    required this.imagePathList,
    this.textList,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          imagePathList.length,
          (index) => _buildImageContainer(imagePathList[index], containerSize, textList != null ? textList![index]:null),
        ),
      ),
    );
  }

  Widget _buildImageContainer(String imagePath, double containerWidth, String? textString) {
    return Column(
      children: [
        Container(
          width: containerWidth,
          height: containerWidth,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
            border: Border.all(color: PaletteLightMode.backgroundColor, width: 0),
          ),
          child: ClipRRect(
            borderRadius: isCircle ? BorderRadius.circular(containerWidth / 2) : BorderRadius.zero,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),

        if(textString != null)
          Text(
            textString,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,

            ),
          )
      ],
    );
  }
}

