import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:task6/core/class/status_request.dart';
import 'package:task6/core/service/my_service.dart';
import 'package:task6/core/service/shared_preferences_key.dart';
import 'check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(
      String linkUrl, Map data, Map<String, String> header) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
          Uri.parse(linkUrl),
          body: jsonEncode(data),
          headers: header,
        );
        print("Response ===============>");
        print(response);
        print("Response StatusCode ===============>");
        print(response.statusCode);

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          print("Response Body ===============>");
          print(response.body);
          var apiToken = responseBody["data"]["access_token"];
          print("API Token ===============>");
          print(apiToken);
          await MyService()
              .saveStringValue(SharedPreferencesKey.tokenKey, apiToken);
          await MyService().setConstantToken();
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      print(_);
      return const Left(StatusRequest.serverFailure);
    }
  }
}
