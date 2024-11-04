import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/my_size.dart';
import '../../../core/const_data/my_text.dart';
import '../../../core/const_data/text_style.dart';
import '../../../widget/custom_ button.dart';

class FavouriteAndAdd extends StatelessWidget {
  final bool? isActive;
  final Function()? onpressed1;
  final Function()? onpressed2;

  FavouriteAndAdd({
    required this.isActive,
    required this.onpressed1,
    required this.onpressed2,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: onpressed1,
          child: CircleAvatar(
            radius: MySize.Radius21,
            backgroundColor: ColorsApp.BackgroundColorFavourite,
            child: Icon(
              isActive! ? Ionicons.heart : Ionicons.heart_outline,
              color: isActive!
                  ? ColorsApp.HomeFavouriteActiveColor
                  : ColorsApp.HomeTextColor,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.025),
          child: CustomButton(
              Child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Ionicons.bag_handle_outline,
                      color: ColorsApp.HomeWhiteColor,
                    ),
                    Text(
                      MyText.Add,
                      style: FontStyles.textStyleHomeReleway14W600White,
                    )
                  ],
                ),
              ),
              onpressed: onpressed2,
              BackgroundColor: ColorsApp.HomeGreenColor,
              MyHeight: screenHeight * 0.065,
              MyWidth: screenWidth * 0.5),
        )
      ],
    );
  }
}
