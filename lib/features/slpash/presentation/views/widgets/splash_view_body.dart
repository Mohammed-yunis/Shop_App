import 'package:e_commerce/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'animated_image.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToAuth();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedImage(
          animation: animation,
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500))
      ..repeat(reverse: true, min: 0, max: 1);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.linear);
    animationController.forward();
  }
  void navigateToAuth() {
    Future.delayed(const Duration(milliseconds: 3000),() {
      GoRouter.of(context).go(AppRouter.kAuthView);
    },);
  }
}
