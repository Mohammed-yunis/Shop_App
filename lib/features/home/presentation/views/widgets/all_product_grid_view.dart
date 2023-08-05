import 'package:flutter/material.dart';

import 'home_grid_view_item.dart';

class AllProductGridView extends StatelessWidget {
  const AllProductGridView({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: height*0.023),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3.3/4,
          crossAxisCount: 2,
          mainAxisSpacing:18,
          crossAxisSpacing: 18,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return HomeGridViewItem(height: height, width: width);
        },
      ),
    );
  }
}
