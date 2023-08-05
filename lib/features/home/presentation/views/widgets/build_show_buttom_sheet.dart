import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildShowBottomSheet extends StatelessWidget {
  const BuildShowBottomSheet({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.3,
      color: kAppBarColor,
      child: Padding(
        padding:  EdgeInsets.all(height*0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Choose your delivery location',style: Style.textTheme15,),
            Text('Delevery options and delivery speeds may vary for diffrents location',style: Style.textTheme13,),

          ],
        ),
      ),
    );
  }
}
