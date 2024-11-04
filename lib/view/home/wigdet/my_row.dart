import 'package:flutter/material.dart';

import '../../../core/const_data/text_style.dart';

class MyRow extends StatelessWidget {
  final Function()? onpressed;
  final String? text1;
  final String? text2;

  MyRow({required this.text1, this.text2, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1!,
          style: FontStyles.textStyleHomeReleway16W500,
        ),
        TextButton(
          child:
              Text(text2!, style: FontStyles.textStyleHomePoppins12W500Green),
          onPressed: onpressed,
        ),
      ],
    );
  }
}
