import 'package:e_commerce/constant.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/app_bar_details_all_products.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/all_product_grid_view.dart';
import 'package:flutter/material.dart';

class AllProductBodyView extends StatelessWidget {
  const AllProductBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          color: kAppBarColor,
          child: SafeArea(
            child: Padding(
              padding:  EdgeInsets.all(height*0.01),
              child: AppBarAllProductAndDetails(width: width,text: 'All Product',),
            ),
          ),
        ),
        Expanded(
          child: AllProductGridView(height: height, width: width),
        ),
      ],
    );
  }
}
