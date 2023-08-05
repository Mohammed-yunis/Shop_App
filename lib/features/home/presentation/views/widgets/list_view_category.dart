import 'package:flutter/material.dart';

import 'list_category_item.dart';

class ListViewCategory extends StatelessWidget {
  const ListViewCategory({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    List data =['Yunis','Nodee','Yunis','Nodee','Yunis','Nodee','Yunis','Nodee','Yunis','Nodee','Yunis','Nodee','Yunis','Nodee','Yunis','Nodee','Yunis','Nodee','Yunis','Nodee',];
    return SizedBox(
      height: height*0.13,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) => ListCategoryItem(height: height, width: width,text: data[index],),
      ),
    );
  }
}
