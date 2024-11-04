import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NotificationsController extends GetxController {
  bool isSelect = true;
  bool isLoading = true;
  bool isDeleted=false;

  time() {
    Timer(Duration(seconds: 2), () {
      isLoading = false;
      update();
    });
  }

  foregroundMessages() async {
    FirebaseMessaging.onMessage.listen((event) {
      print('Got a message whilst in the foreground!');
    }).onError((e) {
      print(e);
    });
  }

  //When Click On Notifications To Open App
  whenOpenApp() async {
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      print('Got a message When Click On Notifications To Open App !');
    }).onError((e) {
      print(e);
    });
  }

  //Background Messages
  BackgroundMessages() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    {
      print('Got a message whilst in the Background Messages!');
    }
  }

  @override
  void onInit() {
    time();
    foregroundMessages();
    whenOpenApp();
    BackgroundMessages();
    // TODO: implement onInit
    super.onInit();
  }
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Background Messages!");
  print(message.data.toString());
}
