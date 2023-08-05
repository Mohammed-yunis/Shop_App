import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'app_bar_home_section_1.dart';
import 'app_bar_home_section_2.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kAppBarColor,
      height: height * 0.26,
      child: Padding(
        padding: EdgeInsets.all(height * 0.02),
        child: SafeArea(
          child: Column(
            children: [
              AppBarHomeSection1(width: width),
              //SizedBox(height: height*0.01,),
              AppBarHomeSection2(width: width,height: height),
              SizedBox(
                height: height * 0.01,
              ),
              SizedBox(
                height: height*0.055,
                child: TextField(
                  style: Style.textTheme12.copyWith(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Search product here',
                    hintStyle: Style.textTheme12.copyWith(fontSize: 11,color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    fillColor: const Color(0xffFFFDFD),
                    filled:true,
                    suffixIcon: const Icon(Icons.search,color: Colors.black,),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
