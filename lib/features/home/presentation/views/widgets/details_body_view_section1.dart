import 'package:e_commerce/core/utils/assets_service.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsBodyViewSection1 extends StatelessWidget {
  const DetailsBodyViewSection1({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: height*0.35,
          child: PageView.builder(
            itemBuilder: (context, index) => Container(color:Colors.white,child: Image.asset(AssetService.test)),
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            controller: controller,
          ),
        ),
        SmoothPageIndicator(controller: controller, count: 3,)
      ],
    );
  }
}
