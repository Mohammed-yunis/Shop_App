import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildWhitePartInItem extends StatelessWidget {
  const BuildWhitePartInItem({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.12,
      width: width,
      color: Colors.white,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.005),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'apple apple',
              style: Style.textTheme13.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
            Row(
              children: [
                Text(
                  'Discount 50%',
                  style: Style.textTheme12.copyWith(
                    fontSize: 11,
                    color: Colors.red,
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: kPrimeColor,
                    ))
              ],
            ),
            Row(
              children: [
                Text(
                  '\$999.99',
                  style: Style.textTheme15.copyWith(
                    color: Color(0xff02A88A),
                  ),
                ),
                const Spacer(),
                Text(
                  '\$999.99',
                  style: Style.textTheme12.copyWith(
                    fontSize: 10,
                      color: Colors.red,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
