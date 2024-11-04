import 'package:flutter/cupertino.dart';
import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/app_image.dart';
import '../../../core/const_data/my_text.dart';
import '../../../core/const_data/text_style.dart';

class NewArrivals extends StatelessWidget {
  final String? UrlPhoto;

  NewArrivals({required this.UrlPhoto});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorsApp.HomeWhiteColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          height: screenHeight * 0.12,
          width: screenWidth * 0.87,
          child: Stack(
            children: [
              Positioned(
                left: screenWidth * 0.05,
                top: screenHeight * 0.022,
                child: Text(
                  MyText.Summer_Sale,
                  style: FontStyles.textStyleHomeReleway12W500,
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.022,
                left: screenWidth * 0.05,
                child: Text(
                  MyText.Sale,
                  style: FontStyles.textStyleHomeReleway16W600Purpule,
                ),
              ),
              Positioned(
                  left: screenWidth * 0.022,
                  bottom: screenHeight * 0.022,
                  child: Image.asset(ImageApp.starHome)),
              Positioned(
                  left: screenWidth * 0.32,
                  top: screenHeight * 0.015,
                  child: Image.asset(ImageApp.starHome)),
              Positioned(
                  left: screenWidth * 0.42,
                  bottom: screenHeight * 0.02,
                  child: Image.asset(ImageApp.starHome)),
              Positioned(
                  right: screenWidth * 0.03,
                  top: screenHeight * 0.02,
                  child: Image.asset(ImageApp.starHome)),
              Positioned(
                  right: screenWidth * 0.37,
                  top: screenHeight * 0.02,
                  child: Image.asset(ImageApp.New)),
            ],
          ),
        ),
        Positioned(
          bottom: screenHeight * 0.02,
          right: screenWidth * 0.15,
          child: Transform.rotate(
            angle: 0.5,
            child: Container(
              color: ColorsApp.HomeWhiteColor,
              child: Image.network(
                UrlPhoto!,
              ),
            ),
          ),
          width: screenWidth * 0.2,
          height: screenHeight * 0.1,
        ),
      ],
    );
  }
}
