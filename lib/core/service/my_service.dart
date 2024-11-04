import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task6/core/const_data/const_data.dart';
import 'package:task6/core/service/shared_preferences_key.dart';

class MyService extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyService> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (await this.getStringValue(SharedPreferencesKey.tokenKey) != null) {
      ConstData.token =
      (await this.getStringValue(SharedPreferencesKey.tokenKey))!;
    }
    print("API Token");
    print(ConstData.token);
    return this;
  }

  Future<void> saveStringValue(String Key, String Value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(Key, Value);
  }

  Future<String?> getStringValue(String Key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(Key);
  }

  Future<void> setConstantToken() async {
    ConstData.token =
    (await this.getStringValue(SharedPreferencesKey.tokenKey))!;
    print("API Token");
    print(ConstData.token);
  }

  String? get name => sharedPreferences.getString('name');

  String? get email => sharedPreferences.getString('email');

  String? get password => sharedPreferences.getString('password');

}
  void savedata(String name, String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
    prefs.setString('email', email);
    prefs.setString('password', password);
  }



initialServices() async {
  await Get.putAsync(() => MyService().init());
}
