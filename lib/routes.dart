import 'package:get/get.dart';

import 'package:task6/view/details/screen/details_screen.dart';
import 'package:task6/view/favourite/screen/favourite_screen.dart';
import 'package:task6/view/home/screen/home_screen.dart';
import 'package:task6/view/notifications/screen/notifications_screen.dart';

import 'package:task6/view/welcom/onboard/screen/onboard_screen.dart';
import 'package:task6/view/welcom/onboard_1/screen/onboard_1_screen.dart';
import 'package:task6/view/welcom/onboard_2/screen/onboard_2_screen.dart';
import 'package:task6/view/welcom/onboard_3/screen/onboard_3_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/OnBoardScreen", page: () => OnBoardScreen()),
  GetPage(name: "/OnBoard1Screen", page: () => OnBoard1Screen()),
  GetPage(name: "/OnBoard2Screen", page: () => OnBoard2Screen()),
  GetPage(name: "/OnBoard3Screen", page: () => OnBoard3Screen()),
  GetPage(name: "/homeScreen", page: () => HomeScreen()),
  GetPage(
      name: "/detailsScreen",
      page: () => DetailsScreen(
            Price: "",
            Text1: "",
            Text2: "",
          )),
  GetPage(name: "/favouriteScreen", page: () => FavouriteScreen()),
  GetPage(name: "/notificationsScreen", page: () => NotificationsScreen()),
];
