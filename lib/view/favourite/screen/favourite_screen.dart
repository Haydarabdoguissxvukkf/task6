
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task6/core/const_data/my_size.dart';
import 'package:task6/view/favourite/controller/favourite_controller.dart';
import 'package:task6/view/home/screen/home_screen.dart';
import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/my_text.dart';
import '../../../core/const_data/text_style.dart';
import '../../../widget/bottom_nav_bar.dart';
import '../../notifications/screen/notifications_screen.dart';
import '../widget/item_category.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GetBuilder<FavouriteController>(
      init: FavouriteController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsApp.BackgroundColor,
          body: controller.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: ColorsApp.circularProgressIndicatorColor,
                  ),
                )
              : Stack(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.06,
                    ),
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
                                radius: MySize.Radius20,
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
                              CircleAvatar(
                                radius: MySize.Radius21,
                                backgroundColor: ColorsApp.HomeWhiteColor,
                                child: Icon(
                                  Ionicons.heart_outline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: ItemCategoryFavourite(
                            itemNum: 30,
                            price: MyText.Price1,
                            text1: MyText.Type,
                            text2: MyText.Name,
                            isActive: controller.isFavourite,
                            onpressed1: () {
                              controller.isFavourite = !controller.isFavourite;
                              controller.update();
                            },
                            UrlPhoto:
                            "https://s3-alpha-sig.figma.com/img/e5ee/84e3/315fb4c39370dbeb4443690116b6a83e?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UWzw2K4nnaYlrerQNgN0lY~CzCZVgFD-DMsncbtiRX36r2RebjuxkGBPuS58XNNn9c2VRn0CFxeYq-spTHOUGiujPrBkaW53w9izh9Ofk-Yzel2rAOHsxOa6j8ypIGxFqbseQI~Dv0WIpiRXpPJhYsU0EUD6~cKXZWo~s~4hxrsdcD7-hIvqTEuyBanBVusLj9XRdkrQUgFG5~pNzQz7j3IR~7gU3~pLoUY6ruLrPwVp9BFMsxUtjbpi2fMNiX5NMbs3xq6IciodAANNEt~ydJgIp2vmtKQnBRPC5TTjeCklmpD6ajvjGntcVPAwlHEY3cpu291DCqOJakswaNdUNQ__"                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: screenWidth * 0,
                      bottom: screenHeight * 0,
                      child: Container(
                        height: screenHeight * 0.1,
                        width: screenWidth,
                        child: BottomNavBar(
                          onpressed1: () {
                            Get.off(() => HomeScreen());
                          },
                          onpressed2: () {},
                          onpressed3: () {
                         // Get.off(()=>CartScreen());
                          },
                          onpressed4: () {
                            Get.off(() => NotificationsScreen());
                          },
                          onpressed5: () {
                           // Get.off(()=>ProfileScreen());
                          },
                          isSelectedHome: false,
                          isSelectedFavourite: true,
                        ),
                      ))
                ]),
        );
      },
    );
  }
}
//
