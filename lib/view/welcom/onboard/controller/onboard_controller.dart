import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../onboard_1/screen/onboard_1_screen.dart';
import '../../onboard_2/screen/onboard_2_screen.dart';
import '../../onboard_3/screen/onboard_3_screen.dart';

class OnBoardController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);

  var activePage = 0.obs;

  final List<Widget> pages = [
    const OnBoard1Screen(),
    const OnBoard2Screen(),
    const OnBoard3Screen()
  ];
}
