import 'package:flutter/material.dart';
import 'package:scholarsync/features/widgets/circular_icon_button.dart';
import 'dart:async';
import 'package:scholarsync/theme/palette.dart';

import '../../constants/icon_constants.dart';

class CustomCarousel extends StatefulWidget {
  final List<String> imageList;
  final double containerPadding;
  final bool showIconButton;
  final bool enableAutoScroll;

  const CustomCarousel({
    Key? key,
    required this.imageList,
    this.containerPadding = 20.0,
    this.showIconButton = false,
    this.enableAutoScroll = true,
  }) : super(key: key);

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _autoScrollTimer;
  final int _autoScrollDuration = 3; // Auto scroll duration in seconds

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentPage);
    if (widget.enableAutoScroll) {
      _startAutoScroll();
    }
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _autoScrollTimer?.cancel();
    super.dispose();
  }

  void _startAutoScroll() {
    _autoScrollTimer =
        Timer.periodic(Duration(seconds: _autoScrollDuration), (timer) {
      if (_currentPage == widget.imageList.length - 1) {
        _currentPage = 0;
      } else {
        _currentPage++;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width -
              2 * widget.containerPadding, // Square container
          child: PageView.builder(
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        widget.imageList[
                            index], // Use Image.asset for local assets
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (widget
                      .showIconButton) // Check if showIconButton is true, then show the IconButton
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircularIconButton(
                          buttonSize: 25,
                          iconAsset: IconConstants.deleteIcon,
                          iconColor: PaletteLightMode.whiteColor,
                          buttonColor: PaletteLightMode.primaryRedColor,
                          onPressed: () {},
                        ),
                      ),
                    ),
                ],
              );
            },
            itemCount: widget.imageList.length,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.imageList.length,
            (index) => Container(
              margin: const EdgeInsets.all(5),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index
                    ? PaletteLightMode.secondaryGreenColor
                    : PaletteLightMode.secondaryTextColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
