import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task6/view/welcom/onboard_3/controller/onboard_3_controller.dart';
import '../../../../core/const_data/app_colors.dart';
import '../../../../core/const_data/app_image.dart';
import '../../../../core/const_data/my_text.dart';
import '../../../../core/const_data/text_style.dart';
import '../../../../widget/custom_ button.dart';
import '../../../home/screen/home_screen.dart';

class OnBoard3Screen extends StatelessWidget {
  const OnBoard3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GetBuilder<OnBoard3Controller>(
      init: OnBoard3Controller(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsApp.welcomBackgroundColor,
          body: Center(
              child: Stack(
            children: [
              Positioned(
                  top: screenHeight * 0.15,
                  left: screenWidth * 0.04,
                  child: Image.asset(ImageApp.OnBoard3)),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.411),
                    child: Text(
                      MyText.OnBoard3Text11,
                      style: FontStyles.textStyleOnBoard2and3Text1,
                    ),
                  ),
                  Text(
                    MyText.OnBoard3Text12,
                    style: FontStyles.textStyleOnBoard2and3Text1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.042),
                    child: Text(
                      MyText.OnBoard3Text21,
                      style: FontStyles.textStyleOnBoard2and3Text2,
                    ),
                  ),
                  Text(
                    MyText.OnBoard3Text22,
                    style: FontStyles.textStyleOnBoard2and3Text2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.272),
                    child: CustomButton(
                      BackgroundColor: ColorsApp.welcomBackgroundButtomColor,
                      MyHeight: screenHeight * 0.06,
                      MyWidth: screenWidth * 0.85,
                      onpressed: () {
                        Get.off(() => HomeScreen());
                      },
                      Child: Text(
                        MyText.OnBoard3TextBouttom,
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
