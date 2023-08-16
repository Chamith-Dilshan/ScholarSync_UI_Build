import 'dart:async';
import 'package:flutter/material.dart';
import '../../constants/image_constants.dart';
import '../../theme/palette.dart';

class Carousel extends StatefulWidget {
  final List<String>imageList;

  const Carousel({
    super.key,
    this.imageList = const[],
    });

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;
  Timer? carouselTimer;
  int pageNo = 0;

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
    _pageController = PageController(viewportFraction: 0.8);
    carouselTimer = getTimer();
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
     List<String> imagesList = [...widget.imageList]; // Use the provided imageList

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

    return Container(
      height: 300,
       child: Column(
          children: [
            SizedBox(
              height: 250,
              child: PageView.builder(
                controller: _pageController,
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
                        currentPageValue =
                            _pageController.page ?? _pageController.initialPage.toDouble();
                      }
                      final distance = (index - currentPageValue).abs();
                      final scale = 1 - (distance * 0.1);

                      return GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("You tapped at $index"),
                            ),
                          );
                        },
                        onPanDown: (d) {
                          carouselTimer?.cancel();
                          carouselTimer = null;
                        },
                        onPanCancel: () {
                          carouselTimer = getTimer();
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOutCubic,
                          width: scale * MediaQuery.of(context).size.width * 0.8,
                          height: scale * 200,
                          margin: const EdgeInsets.all(10),
                          child: Image.asset(
                            imagesList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
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
                        ? PaletteLightMode.primaryGreenColor
                        : PaletteLightMode.secondaryGreenColor,
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
