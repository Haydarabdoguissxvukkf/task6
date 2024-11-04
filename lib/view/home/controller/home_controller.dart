import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../../core/service/link.dart';
import '../../../model/home_model/all_category_model.dart';
import '../../../model/home_model/all_products_model.dart';

class HomeController extends GetxController {
  allCategoryModel? catagory;
  AllProductsModel? product;

  List myProdact = [];

  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController Search = TextEditingController();

  bool isAdded = false;
  bool isFavourite = false;
  bool isLoading = true;

  time() {
    Timer(Duration(seconds: 5), () {
      isLoading = false;
      update();
    });
  }

  Future<allCategoryModel> getallCategory() async {
    print('=================> we are in get allCategory now <===========');
    try {
      var response = await http.get(Uri.parse(AppLink.allCategories), headers: {
        'Accept': 'application/json',
        'Authorization':
            'Bearer 1017|hhS0m3wlTdAr0yJbiICSqYmppZo5xGStoLVRkrCF452c9bfd',
      });
      var body = jsonDecode(response.body);
      catagory = allCategoryModel.fromJson(body);
      print('Catagory Message :${catagory!.message}');
      print('Response Body :${response.body}');
      print(body);
      update();
    } on Exception catch (e) {
      print('Erorr Getting Category $e');
    }
    return catagory!;
  }

  Future<AllProductsModel> getallProdacts() async {
    print('=================> we are in get allProduct now <===========');
    try {
      var response = await http.get(Uri.parse(AppLink.allProducts), headers: {
        'Accept': 'application/json',
        'Authorization':
            'Bearer 1017|hhS0m3wlTdAr0yJbiICSqYmppZo5xGStoLVRkrCF452c9bfd',
      });
      var body = jsonDecode(response.body);
      product = AllProductsModel.fromJson(body);
      print('Catagory Message :${catagory!.message}');
      print('Response Body :${response.body}');
      print(body);
      update();
    } on Exception catch (e) {
      print('Erorr Getting Category $e');
    }
    return product!;
  }

  @override
  void onInit() {
    getallCategory();
    getallProdacts();
    time();
    super.onInit();
  }
}
