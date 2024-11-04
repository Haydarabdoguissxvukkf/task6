import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task6/core/const_data/my_size.dart';
import 'package:task6/view/notifications/controller/notifications_controller.dart';

import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/my_text.dart';
import '../../../core/const_data/text_style.dart';
import '../../home/screen/home_screen.dart';
import '../widget/item_category.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GetBuilder<NotificationsController>(
      init: NotificationsController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsApp.BackgroundColor,
          body: controller.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: ColorsApp.circularProgressIndicatorColor,
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenHeight * 0.075,
                            bottom: screenHeight * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: MySize.Radius21,
                              backgroundColor: ColorsApp.HomeWhiteColor,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios_sharp,
                                  size: MySize.icon15,
                                ),
                                onPressed: () {
                                  Get.off(() => HomeScreen());
                                },
                              ),
                            ),
                            Text(
                              MyText.favourite,
                              style: FontStyles.textStyleHomeReleway16W600,
                            ),
                            InkWell(
                              onTap: (){
                                controller.isDeleted=!controller.isDeleted;
                                controller.update();
                              },
                              child: CircleAvatar(
                                radius: MySize.Radius21,
                                backgroundColor: ColorsApp.HomeWhiteColor,
                                child: Icon(Ionicons.trash_outline),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        children: [
                          Text(
                            MyText.timeD,
                            style: FontStyles.textStyleHomeReleway16W500,
                          ),
                        ],
                      ),
                      Flexible(
                        child: ItemCategoryNotifications(
                          itemNum: controller.isDeleted? 0:20 ,
                          isActive: controller.isSelect,
                          onpressed1: () {
                            controller.isSelect = !controller.isSelect;
                            controller.update();
                          },
                          UrlPhotoActive:
                              "https://s3-alpha-sig.figma.com/img/2167/5ac5/a0ca64f28aa1b21d14e6d68bd3fa7e73?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OZ9qreSVilWTuHOhc4mB29agl4bkOYvZAJhrdklWyovjcXoVH4bGHpquc1ntBmMD80fLxdapYJsOISo8K9G10EwJf3CD-L9LhlOFm4WveRtM7adm9k-WBv3QZuUSZst-Wh7EoV560aGB4728lhE32XmYDe5zbTVigthQoxCq-5Hp4LMRRXGoX9diAi2at78bGhCups6Z7CT0y6Z6D7nABvr9nsm8CFjKvjPELjJi7oHwXhjR-2GIzQlUz5JfInHJfojeJFZEUkxcd2hM3oGgk9jDCBFp67JsWrvnFKWvAqLcH74z4HbXTaYg7twqEbrxpeCTemwPZ7ybFv2X1x~N3g__",
                          UrlPhotoNonActive:
                              "https://s3-alpha-sig.figma.com/img/e5ee/84e3/315fb4c39370dbeb4443690116b6a83e?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UWzw2K4nnaYlrerQNgN0lY~CzCZVgFD-DMsncbtiRX36r2RebjuxkGBPuS58XNNn9c2VRn0CFxeYq-spTHOUGiujPrBkaW53w9izh9Ofk-Yzel2rAOHsxOa6j8ypIGxFqbseQI~Dv0WIpiRXpPJhYsU0EUD6~cKXZWo~s~4hxrsdcD7-hIvqTEuyBanBVusLj9XRdkrQUgFG5~pNzQz7j3IR~7gU3~pLoUY6ruLrPwVp9BFMsxUtjbpi2fMNiX5NMbs3xq6IciodAANNEt~ydJgIp2vmtKQnBRPC5TTjeCklmpD6ajvjGntcVPAwlHEY3cpu291DCqOJakswaNdUNQ__",
                          text1Active: MyText.title1,
                          text2Active: MyText.title2,
                          text1NonActive: MyText.titleOffers1,
                          text2NonActive: MyText.titleOffers2,
                          subText1Active: MyText.subTitle1,
                          subText2Active: MyText.subTitle2,
                          subText1NonActive: MyText.priceDark,
                          subText2NonActive: MyText.priceGrey,
                          time: MyText.timeH,
                        ),
                      )
                    ],
                  ),
                ),
        );
      },
    );
  }
}
