import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/assets_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'build_white_part_in_grid_item.dart';

class HomeGridViewItem extends StatelessWidget {
  const HomeGridViewItem({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kDetailsView);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: kPrimeColor,
              alignment: Alignment.topCenter,
              child: Image.asset(AssetService.test),
            ),
            BuildWhitePartInItem(height: height, width: width),
          ],
        ),
      ),
    );
  }
}

