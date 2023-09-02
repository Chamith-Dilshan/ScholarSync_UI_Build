import 'dart:async';
import 'package:flutter/material.dart';
import 'package:scholarsync/constants/icon_constants.dart';
import 'package:scholarsync/features/widgets/circular_icon_button.dart';
import '../../constants/image_constants.dart';
import '../../theme/palette.dart';

class Carousel extends StatefulWidget {
  final List<String> imageList;
  final bool autoScrolling;
  final bool showIconButton;
  final VoidCallback onPressedDeleteButton;

  const Carousel({
    super.key,
    this.imageList = const [],
    this.autoScrolling = true,
    this.showIconButton = false,
    required this.onPressedDeleteButton,
  });

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;
  Timer? carouselTimer;
  int pageNo = 0;
  bool enableTaprecognizer = true;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == widget.imageList.length - 1) {
        pageNo = 0;
      } else {
        pageNo++;
      }
      _pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
    });
  }

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 1);
    if (widget.autoScrolling) {
      carouselTimer = getTimer();
    } else {
      carouselTimer = null;
      enableTaprecognizer = false;
    }
    super.initState();
  }

  @override
  void dispose() {
    carouselTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> imagesList = [
      ...widget.imageList
    ]; // Use the provided imageList

    // Provide default images if the list is empty
    if (imagesList.isEmpty) {
      imagesList = [
        ImageConstants.img1,
        ImageConstants.img1,
        ImageConstants.img1,
        ImageConstants.img1,
        ImageConstants.img1,
      ];
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.9,
            width: MediaQuery.of(context).size.width * 0.9,
            child: PageView.builder(
              controller: _pageController,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (index) {
                pageNo = index;
                setState(() {});
              },
              itemBuilder: (_, index) {
                return AnimatedBuilder(
                  animation: _pageController,
                  builder: (context, child) {
                    double currentPageValue = 0;
                    if (_pageController.position.haveDimensions) {
                      currentPageValue = _pageController.page ??
                          _pageController.initialPage.toDouble();
                    }

                    // Calculate the scale based on the current page
                    final distance = (index - currentPageValue).abs();
                    final scale = 1 - (distance * 0.1);

                    return GestureDetector(
                      onTap: () {
                        
                      },
                      onPanDown: (d) {
                        if (enableTaprecognizer) {
                          carouselTimer?.cancel();
                          carouselTimer = null;
                        }
                      },
                      onPanCancel: () {
                        if (enableTaprecognizer) {
                          carouselTimer = getTimer();
                        }
                      },
                      child: Stack(children: [
                        Center(
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear,
                            width:
                                scale * MediaQuery.of(context).size.width * 0.8,
                            height:
                                scale * MediaQuery.of(context).size.width * 0.8,
                            margin: const EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imagesList[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        if (widget.showIconButton)
                          Positioned(
                            top: 20,
                            right: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: CircularIconButton(
                                buttonSize: 25,
                                iconAsset: IconConstants.deleteIcon,
                                iconColor: PaletteLightMode.whiteColor,
                                buttonColor: PaletteLightMode.primaryRedColor,
                                onPressed: widget.onPressedDeleteButton,
                              ),
                            ),
                          ),
                      ]),
                    );
                  },
                );
              },
              itemCount: imagesList.length,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              imagesList.length,
              (index) => Container(
                margin: const EdgeInsets.all(10),
                width: 5,
                child: Icon(
                  Icons.circle,
                  size: 10,
                  color: pageNo == index
                      ? PaletteLightMode.secondaryGreenColor
                      : PaletteLightMode.secondaryTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
