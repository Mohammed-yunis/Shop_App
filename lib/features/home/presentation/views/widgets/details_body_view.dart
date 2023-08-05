import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/assets_service.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_add_min_button.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/app_bar_details_all_products.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/all_product_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'details_body_view_section1.dart';
import 'details_body_view_section2.dart';
import 'details_body_view_section3.dart';

class DetailsBodyView extends StatelessWidget {
  const DetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: kAppBarColor,
            child: SafeArea(
              child: Padding(
                padding:  EdgeInsets.all(height*0.01),
                child: AppBarAllProductAndDetails(width: width,text: 'Details'),
              ),
            ),
          ),
          DetailsBodyViewSection1(height: height),
          DetailsBodyViewSection2(width: width),
          DetailsBodyViewSection3(height: height, width: width),
        ],
      ),
    );
  }
}



