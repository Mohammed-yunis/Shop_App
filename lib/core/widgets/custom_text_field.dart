import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, this.keyboard});
  final String title;
  final TextInputType? keyboard;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: title,
        labelStyle: Style.textTheme12,
      ),
      keyboardType:keyboard??TextInputType.text ,
      style: Style.textTheme13,
    );
  }
}
