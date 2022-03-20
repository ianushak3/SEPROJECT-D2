import 'package:flutter/material.dart';
import 'dart:developer';

class flashDealsModal {
  final String images, description;

  flashDealsModal(
    this.images,
    this.description,
  );

  factory flashDealsModal.fromJson(Map<String, dynamic> json) {
    return flashDealsModal(
      json['images'],
      json['description'],
    );
  }
  static List<flashDealsModal> fromListJson(List<dynamic> json) {
    List<flashDealsModal> result = <flashDealsModal>[];
    for (Map<String, dynamic> d in json) {
      log('data: $d');
      result.add(flashDealsModal.fromJson(d));
    }
    print(result);
    return result;
  }
}

// Our demo Products
List<flashDealsModal> deals = [
  flashDealsModal("assets/images/image1.jpg", "50% Off Next Pack"),
  flashDealsModal("assets/images/image2.jpg", "Fresh Fruit Stay Cool"),
  flashDealsModal("assets/images/image3.jpg", "World Vegan Day"),
  flashDealsModal("assets/images/image4.jpg", "Free Delivery"),
  flashDealsModal("assets/images/image5.jpg", "40% Off Flash Sale")
];

const String description = "Flash Deals";
