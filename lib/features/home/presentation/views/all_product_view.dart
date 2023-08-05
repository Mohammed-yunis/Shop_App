import 'package:e_commerce/core/widgets/build_drawer.dart';
import 'package:e_commerce/core/widgets/build_nav_bar.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/all_product_body_view.dart';
import 'package:flutter/material.dart';

class AllProductView extends StatelessWidget {
  const AllProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AllProductBodyView(),
      drawer: BuildDrawer(),
      bottomNavigationBar: BuildBNavBar(),
    );
  }
}
