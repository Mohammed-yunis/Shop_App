import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_add_min_button.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsBodyViewSection3 extends StatelessWidget {
  const DetailsBodyViewSection3({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.1,
      decoration: const BoxDecoration(
          color: kBNavBarColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(18))
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*0.08),
        child: Row(
          children: [
            const AddMinButton(icon: Icons.remove,),
            SizedBox(width: width*0.04,),
            const Text('1',style: Style.textTheme13,),
            SizedBox(width: width*0.04,),
            const AddMinButton(icon: Icons.add,),
            const Spacer(),
            CustomButton(label:'Add To Cart',height: height, width: width*0.5,onPress: (){GoRouter.of(context).push(AppRouter.kCartView);},)
          ],
        ),
      ),
    );
  }
}
