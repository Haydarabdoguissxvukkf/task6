import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/const_data/text_style.dart';

class MoreOrLess extends StatelessWidget {
  final String? text1;
  final String? text2;
  final bool? isActive;
  final Function()? onpressed1;

  MoreOrLess(
      {required this.isActive,
      required this.onpressed1,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: onpressed1,
            child: Text(
              isActive! ? text1! : text2!,
              style: FontStyles.textStyleHomePoppins14W400Green,
            ))
      ],
    );
  }
}
