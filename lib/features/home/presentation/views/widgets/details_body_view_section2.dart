import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DetailsBodyViewSection2 extends StatelessWidget {
  const DetailsBodyViewSection2({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('apple apple',style: Style.textTheme20,overflow: TextOverflow.ellipsis,maxLines: 3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$999',style: Style.textTheme20,),
              Text('Discount 50%',style: Style.textTheme12.copyWith(color: Colors.red),),
              Text('\$7777',style: Style.textTheme12.copyWith(color: Colors.red,fontSize: 10,decoration: TextDecoration.lineThrough),),
            ],
          ),
          Text('Details'),
          Container(height: 1,color: kPrimeColor,),
          Text('apple apple ',style: Style.textTheme12,),
          Container(height: 1,color: kPrimeColor,),
        ],
      ),
    );
  }
}
