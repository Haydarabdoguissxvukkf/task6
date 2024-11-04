import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task6/routes.dart';
import 'package:task6/view/notifications/controller/notifications_controller.dart';
import 'binding/initial_bindings.dart';
import 'core/service/my_service.dart';
import 'core/service/routes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  MyService();
  await initialServices();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Haydar Thaeer Abdo',
      initialBinding: InitialBindings(),
      getPages: routes,
      initialRoute: Routes.OnBoardScreen,
    );
  }
}
