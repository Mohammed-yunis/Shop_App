import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildSection1 extends StatelessWidget {
  const BuildSection1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(
              color: kPrimeColor, style: BorderStyle.solid, strokeAlign: 8),
          value: false,
          onChanged: (value) {},
        ),
        const Opacity(
            opacity: 0.5,
            child: Text(
              'Remember Me',
              style: Style.textTheme12,
            )),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password?',
            style: Style.textTheme12.copyWith(color: kPrimeButtonColor),
          ),
        )
      ],
    );
  }
}
