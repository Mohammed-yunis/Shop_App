import 'package:e_commerce/core/widgets/build_drawer.dart';
import 'package:e_commerce/core/widgets/build_nav_bar.dart';
import 'package:flutter/material.dart';
import 'widgets/details_body_view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailsBodyView(),
      drawer: BuildDrawer(),
      bottomNavigationBar: BuildBNavBar(),
    );
  }
}
