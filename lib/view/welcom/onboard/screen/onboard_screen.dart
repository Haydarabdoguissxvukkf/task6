import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:task6/core/const_data/my_size.dart';

import '../../../../core/const_data/app_colors.dart';
import '../controller/onboard_controller.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final OnBoardController controller = Get.put(OnBoardController());
    return Obx(() => Scaffold(
            body: Stack(
          children: [
            PageView.builder(
              controller: controller.pageController,
              onPageChanged: (int Page) {
                controller.activePage.value = Page;
              },
              itemCount: controller.pages.length,
              itemBuilder: (context, index) {
                return controller.pages[index % controller.pages.length];
              },
            ),
            Positioned(
              bottom: screenHeight * 0,
              left: screenWidth * 0,
              right: screenWidth * 0,
              height: screenHeight * 0.58,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                      controller.pages.length,
                      (index) => Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.015),
                            child: InkWell(
                              onTap: () {
                                controller.pageController.animateToPage(index,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              child: Container(
                                height: controller.activePage == index
                                    ? screenHeight * 0.01
                                    : screenHeight * 0.0085,
                                width: controller.activePage == index
                                    ? screenWidth * 0.16
                                    : screenWidth * 0.09,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(MySize.Radius5),
                                    color: controller.activePage == index
                                        ? ColorsApp.welcomAnimationWhiteColor
                                        : ColorsApp.welcomAnimationGreenColor),
                              ),
                            ),
                          ))),
            )
          ],
        )));
  }
}
