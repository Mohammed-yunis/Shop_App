import 'package:e_commerce/core/utils/assets_service.dart';
import 'package:flutter/material.dart';

class AnimatedImage extends StatelessWidget {
  const AnimatedImage({
    super.key,
    required this.animation,
  });

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
        animation: animation,
        builder: (context, _) => ScaleTransition(
            scale: animation,
            child: Image.asset(
              AssetService.splashImage,
              height: height * 0.15,
            )));
  }
}
