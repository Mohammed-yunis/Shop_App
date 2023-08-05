import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/assets_service.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_bar_home.dart';
import 'home_grid_view.dart';
import 'home_grid_view_item.dart';
import 'home_image_slider.dart';
import 'list_view_category.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        AppBarHome(height: height, width: width),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                ListViewCategory(height: height, width: width),
                HomeImageSlider(height: height),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Row(
                    children: [
                      Text(
                        'New Product',
                        style: Style.textTheme13
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.kAllProductView);
                          },
                          child: Text(
                            'See all',
                            style: Style.textTheme13,
                          ))
                    ],
                  ),
                ),
                HomeGridView(height: height, width: width)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
