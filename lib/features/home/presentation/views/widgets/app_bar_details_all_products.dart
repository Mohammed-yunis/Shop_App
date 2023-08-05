import 'package:e_commerce/core/utils/assets_service.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/notification_app_bar.dart';
import 'package:flutter/material.dart';

class AppBarAllProductAndDetails extends StatelessWidget {
  const AppBarAllProductAndDetails({
    super.key,
    required this.width, required this.text,
  });

  final double width;
  final String text;

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
         Text(
          text,
          style: Style.textTheme14,
        ),
        const Spacer(),
        const NotificationAppBar()
      ],
    );
  }
}
