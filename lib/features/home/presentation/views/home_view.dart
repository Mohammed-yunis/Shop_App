import 'package:e_commerce/features/home/presentation/views/widgets/home_body_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/build_drawer.dart';
import '../../../../core/widgets/build_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  HomeBodyView(),
      drawer: BuildDrawer(),
      bottomNavigationBar: BuildBNavBar(),
    );
  }
}



