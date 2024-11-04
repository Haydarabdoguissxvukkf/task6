import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task6/core/const_data/my_size.dart';

import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/text_style.dart';

class ItemCategoryFavourite extends StatelessWidget {
  final int? itemNum;
  final String? text1;
  final String? text2;
  final String? price;
  final String? UrlPhoto;
  final bool? isActive;
  final Function()? onpressed1;

  ItemCategoryFavourite(
      {required this.UrlPhoto,
      required this.isActive,
      required this.onpressed1,
      required this.price,
      required this.text1,
      required this.text2,
      required this.itemNum});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      child: GridView.builder(
        itemCount: itemNum,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: screenHeight * 0.02,
            crossAxisSpacing: screenWidth * 0.02,
            childAspectRatio: 7 / 8),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: ColorsApp.HomeWhiteColor,
                    borderRadius: BorderRadius.circular(MySize.Radius20)),
                height: screenHeight * 0.3,
                width: screenWidth * 0.41,
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02,
                        ),
                        child: Image.network(
                          UrlPhoto!,
                          height: screenHeight * 0.1,
                          width: screenWidth * 0.35,
                        ),
                      ),
                      Text(
                        text1!,
                        style: FontStyles.textStyleHomePoppins12W500Green,
                      ),
                      SizedBox(
                        height: screenHeight * 0.005,
                      ),
                      Text(
                        text2!,
                        style: FontStyles.textStyleHomeReleway14W600,
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Row(
                        children: [
                          Text(
                            price!,
                            style: FontStyles.textStyleHomePoppins14W500,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.12,
                                right: screenWidth * 0.02),
                            child: CircleAvatar(
                              radius: MySize.Radius7,
                              backgroundColor: ColorsApp.HomeRedColor,
                            ),
                          ),
                          CircleAvatar(
                            radius: MySize.Radius7,
                            backgroundColor: ColorsApp.HomeRedColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: screenHeight * 0.01,
                  left: screenWidth * 0.01,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsApp.HomeBackgroundWidgetColor,
                      borderRadius: BorderRadius.circular(MySize.Radius20),
                    ),
                    width: screenWidth * 0.08,
                    height: screenHeight * 0.04,
                    child: IconButton(
                      iconSize: MySize.icon18,
                      icon: Icon(
                          isActive! ? Ionicons.heart : Ionicons.heart_outline,
                          color: isActive!
                              ? ColorsApp.HomeFavouriteActiveColor
                              : ColorsApp.HomeFavouriteUnActiveColor),
                      onPressed: onpressed1,
                    ),
                  )),
            ],
          );
        },
      ),
    );
  }
}
