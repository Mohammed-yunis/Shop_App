import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'build_show_buttom_sheet.dart';

class AppBarHomeSection2 extends StatelessWidget {
  const AppBarHomeSection2({
    super.key,
    required this.width, required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width * 0.02),
      child: Row(
        children: [
          const Icon(Icons.location_on_outlined),
          SizedBox(
            width: width * 0.01,
          ),
          const Expanded(
              child: Text(
            'St 394 Jackson, New york  United Status mkkkk',
            style: Style.textTheme13,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )),
          IconButton(
            onPressed: () {
               showModalBottomSheet(context: context, builder: (context) => BuildShowBottomSheet(height: height),);
            },
            icon: const Icon(Icons.expand_more),
          )
        ],
      ),
    );
  }
}

