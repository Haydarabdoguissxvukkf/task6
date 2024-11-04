import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task6/core/const_data/app_image.dart';

import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/my_size.dart';
import '../../../core/const_data/text_style.dart';

class MyDetails extends StatelessWidget {
  final String? text1;
  final String? price;
  final String? UrlPhoto;
  final Function()? onpressed1;
  final Function()? onpressed2;

  MyDetails(
      {required this.text1,
      required this.price,
      required this.UrlPhoto,
      required this.onpressed1,
      required this.onpressed2});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.35,
      color: ColorsApp.BackgroundColor,
      child: Stack(
        children: [
          Center(
            child: Image.network(UrlPhoto!),
          ),
          Positioned(
              bottom: screenHeight * 0.01,
              child: Image.asset(ImageApp.Ellipse)),
          Positioned(
              top: screenHeight * 0,
              left: screenWidth * 0,
              child: Text(
                text1!,
                style: FontStyles.textStyleHomeReleway16W500Grey,
              )),
          Positioned(
              top: screenHeight * 0.02,
              left: screenWidth * 0,
              child: Text(
                price!,
                style: FontStyles.textStyleHomePoppins24W600,
              )),
          Positioned(
              bottom: screenHeight * 0,
              left: screenWidth * 0.37,
              child: Container(
                decoration: BoxDecoration(
                    color: ColorsApp.orderColor,
                    borderRadius: BorderRadius.circular(MySize.Radius20)),
                height: screenHeight * 0.02,
                width: screenWidth * 0.15,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: onpressed1,
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: MySize.icon10,
                            color: ColorsApp.HomeWhiteColor,
                          )),
                      InkWell(
                          onTap: onpressed2,
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: MySize.icon10,
                            color: ColorsApp.HomeWhiteColor,
                          )),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
