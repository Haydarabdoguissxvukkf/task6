import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task6/view/details/controller/details_controller.dart';
import 'package:task6/view/details/widget/all_images.dart';
import 'package:task6/view/details/widget/favourite_and_add.dart';
import 'package:task6/view/details/widget/more_or_less.dart';
import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/my_size.dart';
import '../../../core/const_data/my_text.dart';
import '../../../core/const_data/text_style.dart';
import '../../home/screen/home_screen.dart';
import '../widget/my_details.dart';

class DetailsScreen extends StatelessWidget {
  final String Text1;
  final String Text2;
  final String Price;

  DetailsScreen(
      {super.key,
      required this.Text1,
      required this.Text2,
      required this.Price});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GetBuilder<DetailsController>(
      init: DetailsController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsApp.BackgroundColor,
          body: controller.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: ColorsApp.circularProgressIndicatorColor,
                  ),
                )
              : Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: screenHeight * 0.075,
                              bottom: screenHeight * 0.04),
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
                                MyText.MyT_Shirt,
                                style: FontStyles.textStyleHomeReleway16W700,
                              ),
                              InkWell(
                                onTap: () {
                                 // Get.off(()=>CartScreen());
                                },
                                child: Stack(children: [
                                  CircleAvatar(
                                    radius: MySize.Radius21,
                                    backgroundColor: ColorsApp.HomeWhiteColor,
                                    child: Icon(Ionicons.bag_handle_outline),
                                  ),
                                  Positioned(
                                      right: screenWidth * 0,
                                      child: CircleAvatar(
                                        radius: MySize.Radius5,
                                        backgroundColor: ColorsApp.HomeRedColor,
                                      ))
                                ]),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              Text1,
                              style: FontStyles.textStyleHomeReleway26W700,
                            )
                          ],
                        ),
                        MyDetails(
                          text1: Text2,
                          price: Price,
                          UrlPhoto:
                              "https://s3-alpha-sig.figma.com/img/e46c/92f1/85a21469d97e469399057a8a0f19a6f9?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=q7NCbBZbd1sSRbVo-Giv8EdxF-WBuyeQz8x75Ase6EO56GmQw9fKeC8QrIbEisd135ZSiAJ8FC6K3vav4vFmwew1n7O7AuGZMJU4mzqr3wzIX9T4vwkz823BYBKcePY53~DXIttCnOAa8QXjHJImKr3JIL9qq-Ibgs1Mc9LB-f~5J9IHOJjR9N3GDcNZUxe3lX2v~nuYtU81ox4dd5n~p7EIvxv-apItmXI6BCcHc9qi11xQMQ2w84mCkGxffXuUDvtvSQVMN-EiIER2bTvb~Zp9sXC20PlZ7bwacDwV4YLWomOFert7fhZbepmKOGIVMkkiI7ilb1YsFKP~TBa7qw__",
                          onpressed1: () {},
                          onpressed2: () {},
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.02),
                          child: AllImages(
                              UrlPhoto1:
                                  "https://s3-alpha-sig.figma.com/img/2167/5ac5/a0ca64f28aa1b21d14e6d68bd3fa7e73?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OZ9qreSVilWTuHOhc4mB29agl4bkOYvZAJhrdklWyovjcXoVH4bGHpquc1ntBmMD80fLxdapYJsOISo8K9G10EwJf3CD-L9LhlOFm4WveRtM7adm9k-WBv3QZuUSZst-Wh7EoV560aGB4728lhE32XmYDe5zbTVigthQoxCq-5Hp4LMRRXGoX9diAi2at78bGhCups6Z7CT0y6Z6D7nABvr9nsm8CFjKvjPELjJi7oHwXhjR-2GIzQlUz5JfInHJfojeJFZEUkxcd2hM3oGgk9jDCBFp67JsWrvnFKWvAqLcH74z4HbXTaYg7twqEbrxpeCTemwPZ7ybFv2X1x~N3g__",
                              UrlPhoto2:
                                  "https://s3-alpha-sig.figma.com/img/e5ee/84e3/315fb4c39370dbeb4443690116b6a83e?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UWzw2K4nnaYlrerQNgN0lY~CzCZVgFD-DMsncbtiRX36r2RebjuxkGBPuS58XNNn9c2VRn0CFxeYq-spTHOUGiujPrBkaW53w9izh9Ofk-Yzel2rAOHsxOa6j8ypIGxFqbseQI~Dv0WIpiRXpPJhYsU0EUD6~cKXZWo~s~4hxrsdcD7-hIvqTEuyBanBVusLj9XRdkrQUgFG5~pNzQz7j3IR~7gU3~pLoUY6ruLrPwVp9BFMsxUtjbpi2fMNiX5NMbs3xq6IciodAANNEt~ydJgIp2vmtKQnBRPC5TTjeCklmpD6ajvjGntcVPAwlHEY3cpu291DCqOJakswaNdUNQ__",
                              UrlPhoto3:
                                  "https://s3-alpha-sig.figma.com/img/0c49/7bff/3c70e0e1a2c81d1cfc79cf51d0b1b27a?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=grD1Mro10cU45ebP-JhVlvZUbvDOVplr0bjZe21iZ93h43vwmVfyEAhqHm47KI0FCXvfjTec4yME8YQ70XIPXoWITCOcb~weNSULF5x9~PlErtf5ni5bIF1sgQQfCrULfcAH~YVie8vymP5~JQaXUdVX~5djgeLeiN3CY-hajhekC8CHxlyuGOrTEKQqotu1V4s~H8ZrBmMAW8ITayQnhkH8K89ZPFDP9WU7JUfVCvKRs-fVIJgWm3H75XU2Z7YJBWzPUATJW43FC2BKoNlSysmF8MEwuaxg7Uw2cTTBRXfWReeeAs4z0pIyFsv0kmAFnhQEuvfsYDvQnjhnO1PZ3w__",
                              UrlPhoto4:
                                  "https://s3-alpha-sig.figma.com/img/2167/5ac5/a0ca64f28aa1b21d14e6d68bd3fa7e73?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OZ9qreSVilWTuHOhc4mB29agl4bkOYvZAJhrdklWyovjcXoVH4bGHpquc1ntBmMD80fLxdapYJsOISo8K9G10EwJf3CD-L9LhlOFm4WveRtM7adm9k-WBv3QZuUSZst-Wh7EoV560aGB4728lhE32XmYDe5zbTVigthQoxCq-5Hp4LMRRXGoX9diAi2at78bGhCups6Z7CT0y6Z6D7nABvr9nsm8CFjKvjPELjJi7oHwXhjR-2GIzQlUz5JfInHJfojeJFZEUkxcd2hM3oGgk9jDCBFp67JsWrvnFKWvAqLcH74z4HbXTaYg7twqEbrxpeCTemwPZ7ybFv2X1x~N3g__",
                              UrlPhoto5:
                                  "https://s3-alpha-sig.figma.com/img/e9ba/f6e6/419fc46da0a3f42f99690243f5eb9e0f?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=XUBylWzvnvN9ZpsK3l6~-bX1TqVmPzZVwcshqL~JDLwbmAUH0x-jgX6jnXkRebbHao8Nt3UIGX-OR5-yZWe0HAjyQWrFxs7yOENh5PmppVDjMBZ7pXU~~qb9dvgUsoX0j35Qa1I8mnsmez4x5oCQGgb1-gasqxRt5BqNPHy~EXiMmdZWBafoPQS7ChWQehb2rgHujXW1MO-MgIQcl6JhJrnh6urjepYr59NdRg7B4C6LlVxxLpmq26tF1Z~0ljRZ0qjCkBVanj1wziafZXYdOj5xPxDGxB5vPYEWYEViHXMwwgfgfKr3gNgitdF60FUgfJIIkh0Vd8TSPTrexP~x7Q__"),
                        ),
                        Wrap(
                          children: [
                            Text(
                              MyText.MyDetails,
                              style: FontStyles.textStyleHomePoppins11W400Grey,
                              maxLines: controller.readMore ? null : 4,
                            )
                          ],
                        ),
                        MoreOrLess(
                            isActive: controller.readMore,
                            onpressed1: () {
                              controller.readMore = !controller.readMore;
                              controller.update();
                            },
                            text1: MyText.Read_Less,
                            text2: MyText.Read_More),
                        FavouriteAndAdd(
                            isActive: controller.isFavourite,
                            onpressed1: () {
                              controller.isFavourite = !controller.isFavourite;
                              controller.update();
                            },
                            onpressed2: () {})
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
