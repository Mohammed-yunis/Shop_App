import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.height,
    required this.width, this.onPress, required this.label,
  });

  final double height;
  final double width;
  final String label;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color:kPrimeButtonColor ,
      onPressed:onPress?? () {},
      height: height*0.06,
      minWidth: width,
      shape: OutlineInputBorder(
          borderSide: const BorderSide(width: 0),
          borderRadius: BorderRadius.circular(30)
      ),
      child:  Text(label,style: Style.textTheme14,),
    );
  }
}
