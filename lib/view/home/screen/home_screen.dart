import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task6/core/const_data/app_colors.dart';
import 'package:task6/core/const_data/text_style.dart';
import 'package:task6/view/favourite/screen/favourite_screen.dart';
import 'package:task6/view/home/controller/home_controller.dart';
import 'package:task6/view/home/wigdet/new_arrivals.dart';
import 'package:task6/widget/search.dart';
import 'package:task6/view/notifications/screen/notifications_screen.dart';
import 'package:task6/view/home/wigdet/my_row.dart';
import '../../../core/const_data/app_image.dart';
import '../../../core/const_data/my_size.dart';
import '../../../core/const_data/my_text.dart';
import '../../../widget/bottom_nav_bar.dart';

import '../wigdet/buttom_cartegory.dart';
import '../wigdet/item_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsApp.BackgroundColor,
          body: controller.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: ColorsApp.circularProgressIndicatorColor,
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.06),
                            child: Form(
                              key: controller.formState,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenHeight * 0.075,
                                        bottom: screenHeight * 0.04),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          child: Image.asset(
                                              ImageApp.HamburgerHome),
                                          onTap: () {
                                            //Get.off(() => SidemenuScreen());
                                          },
                                        ),
                                        Stack(
                                          children: [
                                            Text(
                                              MyText.Explore,
                                              style: FontStyles
                                                  .textStyleHomeReleway32W700,
                                            ),
                                            Positioned(
                                                left: screenWidth * 0,
                                                child: Image.asset(
                                                    ImageApp.Highlight_05Home))
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {
                                           // Get.off(() => CartScreen());
                                          },
                                          child: Stack(children: [
                                            CircleAvatar(
                                              radius: MySize.Radius21,
                                              backgroundColor:
                                                  ColorsApp.HomeWhiteColor,
                                              child: Icon(
                                                  Ionicons.bag_handle_outline),
                                            ),
                                            Positioned(
                                                right: screenWidth * 0,
                                                child: CircleAvatar(
                                                  radius: MySize.Radius5,
                                                  backgroundColor:
                                                      ColorsApp.HomeRedColor,
                                                ))
                                          ]),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MySearch(
                                          Controller: controller.Search,
                                          onpressed: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: screenWidth * 0.033),
                                        child: InkWell(
                                          onTap: () {
                                            //  Get.off(() => SearchScreen());
                                          },
                                          child: CircleAvatar(
                                            radius: MySize.Radius28,
                                            child:
                                                Image.asset(ImageApp.sliders),
                                            backgroundColor:
                                                ColorsApp.HomeGreenColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.02,
                                  ),
                                  Text(
                                    MyText.Category,
                                    style:
                                        FontStyles.textStyleHomeReleway16W600,
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  BottomCategory(),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  MyRow(
                                    text1: MyText.Popular,
                                    text2: MyText.SeeAll,
                                    onpressed: () {},
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  ItemCategory(
                                    UrlPhoto:
                                        "https://s3-alpha-sig.figma.com/img/2cac/1e0d/798a28f0719295a6c507ea77b96ae1cd?Expires=1731283200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mBNWt35VkCRcAGDrAlrMSh7FjHYeSE8PaZZuEap~gFrzZtIL6Gd7paiY4HnPr6QuqMAJPwJVj2lUi5UtngLmVf98Bj-i4TU0iO2ZQZTzP~uws~UJbrcKxgKgr8Tq85LRfPbJS49bR~dIB9~7i018~b8JlCnaa9EhMZPzGTNpV9bMrj00eM1gXn8K6UxABrZ2Q4CQMABlsfcdTPTVgvu7HNNbGbd3jkjLZK5jx0pQotYYNaSaVwHOWXzT0bJ397m9ayuULfGWa4Z~YHy-syp~DJ3JycYnCNUo0VFD-dV-NmReId9AILpd8gz1ac-FmlnUCO-8wl9MeTeCPJD1xx5ajA__",
                                    text1: MyText.Type,
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.02,
                                  ),
                                  MyRow(
                                    text1: MyText.New_Arrivals,
                                    text2: MyText.SeeAll,
                                    onpressed: () {},
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.01,
                                  ),
                                  NewArrivals(
                                    UrlPhoto:
                                        "https://s3-alpha-sig.figma.com/img/2cac/1e0d/798a28f0719295a6c507ea77b96ae1cd?Expires=1731888000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RXmiysoM0Yv5zlgBLoWppqyB6kVgRBU-nwsDWJxiiyUPCsV0gmNAid5dEnsSSFGUCs4eWJ5CcRp318s57zqGZhzA7rIqZFpdHWyex3RpFvcMhXb85TNwvJZUJirV69TNXl3bib65vTqqgECKw3P-bmQ7Ttbxd2~BJyAot2iH5yLmOy6Yh~JzloqiTgFpVoCzdYfFB59J1wtFxny2lzgdnhr5Rekz9py9OHMt1zz1D51qt~TbPFNCzLA2m4wx~1mptxygTVt2k-F3ZqdUoet23MfMSfRKEdWgjPjUHwxeugCrd3~I7IYrDGnP6UA07tIWb2T5~hEo8FL8nGGfR~AUaw__",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.035,
                      ),
                      Container(
                          height: screenHeight * 0.1,
                          width: screenWidth,
                          child: BottomNavBar(
                            onpressed1: () {},
                            onpressed2: () {
                              Get.off(() => FavouriteScreen());
                            },
                            onpressed3: () {
                            //   Get.off(() => CartScreen());
                            },
                            onpressed4: () {
                              Get.off(() => NotificationsScreen());
                            },
                            onpressed5: () {
                             // Get.off(()=>ProfileScreen());
                            },
                            isSelectedHome: true,
                            isSelectedFavourite: false,
                          ))
                    ],
                  ),
                ),
        );
      },
    );
  }
}
