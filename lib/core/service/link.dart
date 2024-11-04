import 'package:task6/core/const_data/const_data.dart';

class AppLink {
  //local address
  //static String reg = "127.0.0.1";

  //remote address
  static String appRoot = "http://task.focal-x.com";

  static String imageWithRoot = "$appRoot/storagr";

  static String imageWithoutRoot = "$appRoot";

  static String ApiRoot = "$appRoot/api";

  //

  static String allCategories = "$ApiRoot/categories";
  static String subCategories = "$ApiRoot/sub/categories";
  static String allProducts = "$ApiRoot/products";

  //
  static String register = "$ApiRoot/auth/register";
  static String logout = "$ApiRoot/logout";
  static String login = "$ApiRoot/login";
  static String home = "$ApiRoot/home";

  static String user = "$ApiRoot/user";
  static String profile = "$ApiRoot/profile";
  static String notification = "$ApiRoot/notification";

  Map<String, String> getHeader() {
    Map<String, String> mainHeader = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'X-Requested-With': 'XMLHttpRequest',
    };
    return mainHeader;
  }

  Map<String, String> getHeaderToken() {
    Map<String, String> mainHeader = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'X-Requested-With': 'XMLHttpRequest',
      'Authorization': 'Bearer${ConstData.token}'
    };
    return mainHeader;
  }
}
