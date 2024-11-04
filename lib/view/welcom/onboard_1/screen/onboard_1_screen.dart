import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task6/view/welcom/onboard_1/controller/onboard_1_controller.dart';
import '../../../../core/const_data/app_colors.dart';
import '../../../../core/const_data/app_image.dart';
import '../../../../core/const_data/my_text.dart';
import '../../../../core/const_data/text_style.dart';
import '../../../../widget/custom_ button.dart';
import '../../onboard/controller/onboard_controller.dart';

class OnBoard1Screen extends StatelessWidget {
  const OnBoard1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final OnBoardController onBoardController = Get.put(OnBoardController());
    return GetBuilder<OnBoard1Controller>(
      init: OnBoard1Controller(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsApp.welcomBackgroundColor,
          body: Center(
            child: Stack(children: [
              Positioned(
                  bottom: screenHeight * 0.1,
                  child: Image.asset(ImageApp.OnBoard11)),
              Positioned(
                  top: screenHeight * 0.211,
                  right: screenWidth * 0.05,
                  child: Image.asset(ImageApp.OnBoard12)),
              Positioned(
                  top: screenHeight * 0.1,
                  left: screenWidth * 0.04,
                  child: Image.asset(ImageApp.OnBoard13)),
              Positioned(
                  bottom: screenHeight * 0.46,
                  left: screenWidth * 0.25,
                  child: Image.asset(ImageApp.OnBoard14)),
              Positioned(
                  bottom: screenHeight * 0.2,
                  right: screenWidth * 0,
                  child: Image.asset(ImageApp.OnBoard15)),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.40,
                    ),
                    child: Text(
                      MyText.OnBoard1Text11,
                      style: FontStyles.textStyleOnBoard1Text1,
                    ),
                  ),
                  Text(
                    MyText.OnBoard1Text12,
                    style: FontStyles.textStyleOnBoard1Text1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.385,
                    ),
                    child: CustomButton(
                      BackgroundColor: ColorsApp.welcomBackgroundButtomColor,
                      MyHeight: screenHeight * 0.06,
                      MyWidth: screenWidth * 0.85,
                      onpressed: () {
                        onBoardController.pageController.animateToPage(1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      Child: Text(
                        MyText.OnBoard1TextBouttom,
                        style: FontStyles.textStyleOnBoard1ElevatedButtonText,
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        );
      },
    );
  }
}
