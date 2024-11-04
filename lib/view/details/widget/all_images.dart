import 'package:flutter/cupertino.dart';
import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/my_size.dart';

class AllImages extends StatelessWidget {
  final String? UrlPhoto1;
  final String? UrlPhoto2;
  final String? UrlPhoto3;
  final String? UrlPhoto4;
  final String? UrlPhoto5;

  AllImages({
    required this.UrlPhoto1,
    required this.UrlPhoto2,
    required this.UrlPhoto3,
    required this.UrlPhoto4,
    required this.UrlPhoto5,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(MySize.Radius20)),
            color: ColorsApp.HomeWhiteColor,
          ),
          width: screenWidth * 0.101,
          height: screenHeight * 0.082,
          child: Image.network(
            UrlPhoto1!,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(MySize.Radius20)),
            color: ColorsApp.HomeWhiteColor,
          ),
          width: screenWidth * 0.101,
          height: screenHeight * 0.082,
          child: Image.network(
            UrlPhoto2!,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(MySize.Radius20)),
            color: ColorsApp.HomeWhiteColor,
          ),
          width: screenWidth * 0.101,
          height: screenHeight * 0.082,
          child: Image.network(
            UrlPhoto3!,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(MySize.Radius20)),
            color: ColorsApp.HomeWhiteColor,
          ),
          width: screenWidth * 0.101,
          height: screenHeight * 0.082,
          child: Image.network(
            UrlPhoto4!,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(MySize.Radius20)),
            color: ColorsApp.HomeWhiteColor,
          ),
          width: screenWidth * 0.101,
          height: screenHeight * 0.082,
          child: Image.network(
            UrlPhoto5!,
          ),
        ),
      ],
    );
  }
}
