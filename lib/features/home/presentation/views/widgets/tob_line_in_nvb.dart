import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

class TopLine extends StatelessWidget {
  const TopLine({
    super.key,
    required this.itemWidth,
    required int selectedIndex,
  }) : _selectedIndex = selectedIndex;

  final double itemWidth;
  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left:itemWidth * _selectedIndex + itemWidth /6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
          color: kPrimeButtonColor,
        ),
        width: itemWidth /1.5 ,
        height: 6,
      ),
    );
  }
}
