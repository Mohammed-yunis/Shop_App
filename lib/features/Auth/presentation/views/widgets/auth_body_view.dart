import 'package:e_commerce/core/utils/assets_service.dart';
import 'package:flutter/material.dart';
import 'build_body.dart';

class AuthBodyView extends StatelessWidget {
  const AuthBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool change =true;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          AssetService.logIn,
          fit: BoxFit.fitWidth,
          width: width,
          height: height,
        ),
        BuildBody(
          change: change,
          height: height,
          width: width,
          onPress: () {},
        ),
      ],
    );  }
}
