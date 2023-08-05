import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home_image_slider_item.dart';

class HomeImageSlider extends StatelessWidget {
  const HomeImageSlider({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 6,
      itemBuilder: (context, index, realIndex) => const HomeImageSliderItem(),
      options: CarouselOptions(
        height: height * 0.18,
        reverse: false,
        initialPage: 0,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayInterval: const Duration(seconds: 3),
        viewportFraction: 1,
      ),
    );
  }
}

