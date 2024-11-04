import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task6/core/const_data/my_size.dart';

import '../core/const_data/app_colors.dart';
import '../view/home/bmb_custom_painter.dart';

class BottomNavBar extends StatelessWidget {
  final Function()? onpressed1;
  final Function()? onpressed2;
  final Function()? onpressed3;
  final Function()? onpressed4;
  final Function()? onpressed5;
  final bool? isSelectedHome;
  final bool? isSelectedFavourite;

  BottomNavBar(
      {this.onpressed1,
      this.onpressed2,
      this.onpressed3,
      this.onpressed4,
      this.onpressed5,
      this.isSelectedHome,
      this.isSelectedFavourite});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        CustomPaint(
          size: Size(screenWidth, screenHeight * 0.2),
          painter: BMBCustomPainter(),
        ),
        Center(
          heightFactor: 1.3,
          child: FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: ColorsApp.HomeGreenColor,
            child: Icon(
              Ionicons.bag_handle_outline,
              size: MySize.icon25,
              color: ColorsApp.HomeWhiteColor,
            ),
            onPressed: onpressed3,
          ),
        ),
        Container(
          width: screenWidth,
          height: screenHeight * 0.125,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: onpressed1,
                  icon: Icon(
                    Icons.home_outlined,
                    size: MySize.icon30,
                    color: isSelectedHome!
                        ? ColorsApp.HomeGreenColor
                        : ColorsApp.Black,
                  )),
              IconButton(
                onPressed: onpressed2,
                icon: Icon(
                  Ionicons.heart_outline,
                  size: MySize.icon30,
                  color: isSelectedFavourite!
                      ? ColorsApp.HomeGreenColor
                      : ColorsApp.Black,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.15,
              ),
              IconButton(
                  onPressed: onpressed4,
                  icon: Icon(Ionicons.notifications_outline,
                      size: MySize.icon30)),
              IconButton(
                icon: Icon(
                  Ionicons.person_outline,
                  size: MySize.icon30,
                ),
                onPressed: onpressed5,
              ),
            ],
          ),
        )
      ],
    );
  }
}
