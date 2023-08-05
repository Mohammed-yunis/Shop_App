import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/notification_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/cart_body_view.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const CartBodyView(),
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Your Cart',style: Style.textTheme15,) ,
        backgroundColor: kAppBarColor,
        actions: const [
          NotificationAppBar()
        ],
      ),
    );
  }
}
