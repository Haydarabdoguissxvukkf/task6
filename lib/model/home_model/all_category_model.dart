// To parse this JSON data, do
//
//     final allCategoryModel = allCategoryModelFromJson(jsonString);

import 'dart:convert';

allCategoryModel allCategoryModelFromJson(String str) =>
    allCategoryModel.fromJson(json.decode(str));

String allCategoryModelToJson(allCategoryModel data) =>
    json.encode(data.toJson());

class allCategoryModel {
  List<Data> data;
  String message;

  allCategoryModel({
    required this.data,
    required this.message,
  });

  factory allCategoryModel.fromJson(Map<String, dynamic> json) =>
      allCategoryModel(
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };
}

class Data {
  int id;
  String name;

  Data({
    required this.id,
    required this.name,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
