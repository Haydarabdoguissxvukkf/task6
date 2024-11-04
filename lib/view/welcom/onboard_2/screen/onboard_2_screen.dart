import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task6/view/welcom/onboard_2/controller/onboard_2_controller.dart';
import '../../../../core/const_data/app_colors.dart';
import '../../../../core/const_data/app_image.dart';
import '../../../../core/const_data/my_text.dart';
import '../../../../core/const_data/text_style.dart';
import '../../../../widget/custom_ button.dart';
import '../../onboard/controller/onboard_controller.dart';

class OnBoard2Screen extends StatelessWidget {
  const OnBoard2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final OnBoardController onBoardController = Get.put(OnBoardController());
    return GetBuilder<OnBoard2Controller>(
      init: OnBoard2Controller(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsApp.welcomBackgroundColor,
          body: Center(
              child: Stack(
            children: [
              Positioned(
                  top: screenHeight * 0.18,
                  right: screenWidth * 0.02,
                  child: Image.asset(ImageApp.OnBoard21)),
              Positioned(
                  top: screenHeight * 0.17,
                  child: Image.asset(ImageApp.OnBoard22)),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.41),
                    child: Text(
                      MyText.OnBoard2Text1,
                      style: FontStyles.textStyleOnBoard2and3Text1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.08),
                    child: Text(
                      MyText.OnBoard2Text2,
                      style: FontStyles.textStyleOnBoard2and3Text2,
                    ),
                  ),
                  Text(
                    MyText.OnBoard2Text3,
                    style: FontStyles.textStyleOnBoard2and3Text2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.29),
                    child: CustomButton(
                      BackgroundColor: ColorsApp.welcomBackgroundButtomColor,
                      MyHeight: screenHeight * 0.06,
                      MyWidth: screenWidth * 0.85,
                      onpressed: () {
                        onBoardController.pageController.animateToPage(2,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      Child: Text(
                        MyText.OnBoard2TextBouttom,
                        style: FontStyles.textStyleOnBoard1ElevatedButtonText,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
        );
      },
    );
  }
}
