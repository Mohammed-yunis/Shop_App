import 'package:e_commerce/constant.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildSection2 extends StatelessWidget {
  const BuildSection2({
    super.key,
    required this.change, this.onPress,
  });

  final bool change;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(change?'Don’t have an account? ':'Have An Account? ',style: Style.textTheme13,),
        TextButton(
          onPressed: onPress??() {},
          child: Text(
            change?'Sign Up':'Sign In',
            style: Style.textTheme13
                .copyWith(color:kPrimeButtonColor ),
          ),
        )
      ],
    );
  }
}
