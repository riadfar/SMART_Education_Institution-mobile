import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../utils/constants.dart';

final List<String> images = [
  'assets/images/1.jpg',
  'assets/images/1.jpg',
  'assets/images/1.jpg',
  'assets/images/1.jpg',
];
int current = 0;

var carouselController = CarouselController();

Widget buildCarouselSlider() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) {
            final bool isCenter = index == current;
            return AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: isCenter ? 1.0 : 0.5,
              child: Transform.scale(
                scale: isCenter ? 1.0 : 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            autoPlayInterval: const Duration(seconds: 4),
            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            onPageChanged: (index, reason) {
              current = index;
            },
          ),
        ),
      ),
      AnimatedSmoothIndicator(
        activeIndex: current,
        count: images.length,
        effect: WormEffect(
          dotHeight: 8,
          dotWidth: 8,
          activeDotColor: defaultColor,
          dotColor: Colors.grey.shade400,
        ),
        duration: Duration(seconds: 1),
        onDotClicked: (i) {
          carouselController.animateToItem(i);
        },
      ),
    ],
  );
}
