import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task6/core/const_data/my_size.dart';
import 'package:task6/core/const_data/text_style.dart';
import 'package:task6/view/details/screen/details_screen.dart';
import '../../../core/const_data/app_colors.dart';
import '../controller/home_controller.dart';

class ItemCategory extends StatelessWidget {
  final int? itemNum;
  final String? text1;
  final String? text2;
  final String? price;
  final String? UrlPhoto;
  final bool? isActive;
  final Function()? onpressed;
  final Function()? onpressed1;
  final Function()? onpressed2;

  ItemCategory(
      {required this.UrlPhoto,
      this.isActive,
      this.onpressed,
      this.onpressed1,
      this.onpressed2,
      this.price,
      required this.text1,
      this.text2,
      this.itemNum});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return SizedBox(
            height: screenHeight * 0.23,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: controller.product!.data.length,
              itemBuilder: (context, index) {
                id:
                controller.product!.data[index].id;
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.off(() => DetailsScreen(
                                Text1: controller.product!.data[index].name,
                                Text2: controller.product!.data[index]
                                    .subCategory.category.name,
                                Price:
                                    "${controller.product!.data[index].price.toString()} \$ ",
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: ColorsApp.HomeWhiteColor,
                              borderRadius:
                                  BorderRadius.circular(MySize.Radius20)),
                          height: screenHeight * 0.23,
                          width: screenWidth * 0.42,
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
                                  style: FontStyles
                                      .textStyleHomePoppins12W500Green,
                                ),
                                SizedBox(
                                  height: screenHeight * 0.005,
                                ),
                                Text(
                                  controller.product!.data[index].name,
                                  style: FontStyles.textStyleHomeReleway14W600,
                                ),
                                SizedBox(
                                  height: screenHeight * 0.01,
                                ),
                                Text(
                                  "${controller.product!.data[index].price.toString()} \$ ",
                                  style: FontStyles.textStyleHomePoppins14W500,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: screenHeight * 0,
                          left: screenWidth * 0,
                          child: IconButton(
                              iconSize: MySize.icon18,
                              icon: Icon(
                                  controller.isFavourite
                                      ? Ionicons.heart
                                      : Ionicons.heart_outline,
                                  color: controller.isFavourite
                                      ? ColorsApp.HomeFavouriteActiveColor
                                      : ColorsApp.HomeFavouriteUnActiveColor),
                              onPressed: () {
                                controller.isFavourite =
                                    !controller.isFavourite;
                                controller.update();
                                controller.myProdact
                                    .add(controller.product!.data[index].name);
                                controller.myProdact.add(controller.product!
                                    .data[index].subCategory.category.name);
                                controller.myProdact.add(
                                    "${controller.product!.data[index].price.toString()} \$ ");
                              })),
                      Positioned(
                          right: screenWidth * 0,
                          bottom: screenHeight * 0,
                          child: InkWell(
                            onTap: () {
                              controller.isAdded = true;
                              controller.update();
                              controller.myProdact
                                  .add(controller.product!.data[index].name);
                              controller.myProdact.add(controller.product!
                                  .data[index].subCategory.category.name);
                              controller.myProdact.add(
                                  "${controller.product!.data[index].price.toString()} \$ ");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(MySize.Radius17),
                                    bottomRight:
                                        Radius.circular(MySize.Radius17)),
                                color: controller.isAdded
                                    ? ColorsApp.HomeWhiteColor
                                    : ColorsApp.HomeGreenColor,
                              ),
                              height: screenHeight * 0.04,
                              width: screenWidth * 0.08,
                              child: Icon(
                                controller.isAdded ? null : Icons.add,
                                color: ColorsApp.HomeWhiteColor,
                              ),
                            ),
                          ))
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
