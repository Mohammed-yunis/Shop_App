import 'package:e_commerce/core/utils/assets_service.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'notification_app_bar.dart';

class AppBarHomeSection1 extends StatelessWidget {
  const AppBarHomeSection1({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {Scaffold.of(context).openDrawer();},
          icon: Image.asset(AssetService.menu, width: 18),
        ),
        SizedBox(
          width: width * 0.03,
        ),
        const Text(
          'Home',
          style: Style.textTheme14,
        ),
        const Spacer(),
        const NotificationAppBar(),
      ],
    );
  }
}

