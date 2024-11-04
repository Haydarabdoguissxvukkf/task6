import 'dart:async';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FavouriteController extends GetxController {
  bool isFavourite = true;
  bool isLoading = true;

  time() {
    Timer(Duration(seconds: 2), () {
      isLoading = false;
      update();
    });
  }

  @override
  void onInit() {
    time();
    super.onInit();
  }
}
