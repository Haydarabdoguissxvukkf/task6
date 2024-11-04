import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task6/core/const_data/my_size.dart';

class CustomButton extends StatelessWidget {
  final Widget? Child;
  final Function()? onpressed;
  final Color? BackgroundColor;
  final double? MyWidth;
  final double? MyHeight;

  CustomButton({
    required this.Child,
    required this.onpressed,
    required this.BackgroundColor,
    required this.MyHeight,
    required this.MyWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Child,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(MySize.Radius10))),
        backgroundColor: MaterialStateProperty.all(BackgroundColor),
        fixedSize: MaterialStateProperty.all(Size(MyWidth!, MyHeight!)),
      ),
    );
  }
}
