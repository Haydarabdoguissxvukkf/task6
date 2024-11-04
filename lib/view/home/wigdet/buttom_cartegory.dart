import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task6/core/const_data/text_style.dart';
import 'package:task6/view/home/controller/home_controller.dart';
import 'package:task6/widget/custom_%20button.dart';

import '../../../core/const_data/app_colors.dart';

class BottomCategory extends StatelessWidget {
  final int? itemNum;
  final Function()? onpressed1;
  final String? text1;
  final int? id;

  BottomCategory({
    this.id,
    this.itemNum,
    this.onpressed1,
    this.text1,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return SizedBox(
            height: screenHeight * 0.055,
            child: ListView.builder(
                itemCount: controller.catagory!.data.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  id:
                  controller.catagory!.data[index].id;
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    child: CustomButton(
                        Child: Text(
                          controller.catagory!.data[index].name,
                          style: FontStyles.textStyleHomePoppins12W400,
                        ),
                        onpressed: () {
                          print("ID ${controller.catagory!.data[index].id}");
                        },
                        BackgroundColor: ColorsApp.HomeWhiteColor,
                        MyHeight: screenHeight * 0.022,
                        MyWidth: screenWidth * 0.3),
                  );
                }));
      },
    );
  }
}
