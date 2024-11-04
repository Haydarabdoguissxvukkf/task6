import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task6/core/const_data/my_size.dart';

import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/my_text.dart';
import '../../../core/const_data/text_style.dart';

class ItemCategoryNotifications extends StatelessWidget {
  final bool? isActive;
  final Function()? onpressed1;
  final int? itemNum;
  final String? UrlPhotoActive;
  final String? UrlPhotoNonActive;
  final String? text1Active;
  final String? text1NonActive;
  final String? text2Active;
  final String? text2NonActive;
  final String? subText1Active;
  final String? subText2Active;
  final String? subText1NonActive;
  final String? subText2NonActive;
  final String? time;

  ItemCategoryNotifications({
    required this.isActive,
    required this.text1Active,
    required this.subText2NonActive,
    required this.subText2Active,
    required this.subText1NonActive,
    required this.itemNum,
    required this.onpressed1,
    required this.subText1Active,
    required this.text1NonActive,
    required this.text2Active,
    required this.text2NonActive,
    required this.time,
    required this.UrlPhotoActive,
    required this.UrlPhotoNonActive,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 7 / 3),
        padding: EdgeInsets.only(top: screenHeight * 0.01),
        shrinkWrap: true,
        itemCount: itemNum,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
            child: InkWell(
              onTap: onpressed1,
              child: Container(
                decoration: BoxDecoration(
                    color: isActive!
                        ? ColorsApp.HomeWhiteColor
                        : ColorsApp.BackgroundColor,
                    borderRadius:
                        BorderRadius.all(Radius.circular(MySize.Radius10))),
                width: double.infinity,
                height: screenHeight * 0.155,
                child: Padding(
                  padding: EdgeInsets.all(MySize.All10),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.network(
                              isActive! ? UrlPhotoActive! : UrlPhotoNonActive!,
                            ),
                            width: screenWidth * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(MySize.Radius20)),
                              color: isActive!
                                  ? ColorsApp.BackgroundColor
                                  : ColorsApp.HomeWhiteColor,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.06,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.013),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  isActive! ? text1Active! : text1NonActive!,
                                  style: FontStyles.textStyleHomeReleway14W600,
                                ),
                                Text(
                                  isActive! ? text2Active! : text2NonActive!,
                                  style: FontStyles.textStyleHomeReleway14W600,
                                ),
                                SizedBox(
                                  height: screenHeight * 0.005,
                                ),
                                isActive!
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                            Text(
                                              subText1Active!,
                                              style: FontStyles
                                                  .textStyleHomePoppins11W500,
                                            ),
                                            Text(
                                              subText2Active!,
                                              style: FontStyles
                                                  .textStyleHomePoppins11W500,
                                            ),
                                          ])
                                    : Row(
                                        children: [
                                          Text(
                                            subText1NonActive!,
                                            style: FontStyles
                                                .textStyleHomePoppins14W500,
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.01,
                                          ),
                                          Text(
                                            subText1NonActive!,
                                            style: FontStyles
                                                .textStyleHomePoppins14W500Grey,
                                          ),
                                        ],
                                      )
                              ],
                            ),
                          )
                        ],
                      ),
                      Positioned(
                          right: screenWidth * 0,
                          child: Text(
                            time!,
                            style: FontStyles.textStyleHomePoppins14W500Grey,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
