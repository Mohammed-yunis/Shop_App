import 'package:e_commerce/core/utils/assets_service.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ListCategoryItem extends StatelessWidget {
  const ListCategoryItem({
    super.key,
    required this.height,
    required this.width, required this.text,
  });

  final double height;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(height * 0.02),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 23,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(AssetService.test),
          ),
          SizedBox(
            height: height * 0.006,
          ),
          SizedBox(
              width: width * 0.11,
              child: Text(
                text,
                style: Style.textTheme12.copyWith(
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ))
        ],
      ),
    );
  }
}
