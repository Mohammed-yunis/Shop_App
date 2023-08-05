import 'package:e_commerce/core/utils/assets_service.dart';
import 'package:flutter/material.dart';

class HomeImageSliderItem extends StatelessWidget {
  const HomeImageSliderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 4.7 / 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
              color: Colors.white,
              child: Image.asset(
                AssetService.test,
                fit: BoxFit.cover,
              )),
        ));
  }
}
