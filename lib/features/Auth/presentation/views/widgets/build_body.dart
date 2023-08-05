import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'build_section_1.dart';
import 'build_section_2.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({
    super.key,
    required this.change,
    required this.height,
    required this.width, this.onPress,
  });

  final bool change;
  final double height;
  final double width;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: change?height * 0.669:height * 0.834,
      decoration: const BoxDecoration(
        color: kScaffoldPrimeColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      child: Padding(
        padding: EdgeInsets.all(height * 0.05),
        child: SingleChildScrollView(

          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              if(change==false)
                const CustomTextField(
                    title: 'Full Name',
                    keyboard: TextInputType.emailAddress),
              if(change==false)
                SizedBox(
                  height: height * 0.03,
                ),
              CustomTextField(
                  title: change?'Your Email Address':'Email Address',
                  keyboard: TextInputType.emailAddress),
              SizedBox(
                height:height *0.03,
              ),
              if(change==false)
                const CustomTextField(
                    title: 'Conform Password',
                    keyboard: TextInputType.emailAddress),
              if(change==false)
                SizedBox(
                  height: height * 0.03,
                ),
              const CustomTextField(title: 'Password'),
              SizedBox(
                height:  change?height *0.05:height *0.03,
              ),
              if(change==false)
                const CustomTextField(
                    title: 'Conform Password',
                    keyboard: TextInputType.emailAddress),
              if(change==false)
                SizedBox(
                  height: height * 0.03,
                ),
              if(change)
                const BuildSection1(),
              SizedBox(
                height:  change?height *0.08:height *0.07,
              ),
              CustomButton(label:'Sign In',height: height, width: width,onPress: (){GoRouter.of(context).push(AppRouter.kHomeView);},),
              SizedBox(height: height*0.08,),
              BuildSection2(change: change,onPress: onPress,)
            ],
          ),
        ),
      ),
    );
  }
}
