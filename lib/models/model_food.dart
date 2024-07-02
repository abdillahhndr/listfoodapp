// To parse this JSON data, do
//
//     final modelListFood = modelListFoodFromJson(jsonString);

import 'dart:convert';

List<ModelListFood> modelListFoodFromJson(String str) =>
    List<ModelListFood>.from(
        json.decode(str).map((x) => ModelListFood.fromJson(x)));

String modelListFoodToJson(List<ModelListFood> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelListFood {
  String name;
  String image;
  String desc;

  ModelListFood({
    required this.name,
    required this.image,
    required this.desc,
  });

  factory ModelListFood.fromJson(Map<String, dynamic> json) => ModelListFood(
        name: json["name"],
        image: json["image"],
        desc: json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "desc": desc,
      };
}
