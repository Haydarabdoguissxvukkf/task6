import 'dart:async';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DetailsController extends GetxController {
  bool isFavourite = false;
  bool readMore = false;
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
