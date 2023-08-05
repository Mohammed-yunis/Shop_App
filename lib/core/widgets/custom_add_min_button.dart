import 'package:flutter/material.dart';

class AddMinButton extends StatelessWidget {
  const AddMinButton({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    return InkWell(
      onTap: (){},

      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            width: width*0.08,
            height: height*0.038,
          ),
          Icon(icon,color: Colors.black,)
        ],
      ),
    );
  }
}
