import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

class CartBodyView extends StatefulWidget {
  const CartBodyView({super.key});

  @override
  State<CartBodyView> createState() => _CartBodyViewState();
}

class _CartBodyViewState extends State<CartBodyView> {
  List<bool> _checkedList = List.generate(10, (index) => false);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: kBNavBarColor,
            borderRadius: BorderRadius.circular(16),
          ),
          height: height * 0.15,
          child: Checkbox(
            value: _checkedList[index],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onChanged: (value) {
              setState(() {
                _checkedList[index]=value!;
              });
            },
          ),
        );
      },
      itemCount: 10,
    );
  }
}
