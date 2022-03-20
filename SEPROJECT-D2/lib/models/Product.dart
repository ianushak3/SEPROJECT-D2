import 'package:flutter/material.dart';
import 'dart:developer';

class Product {
  final int id;
  final String title, description;
  final String images;
  final String colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product(
    this.id,
    this.images,
    this.colors,
    this.rating,
    this.isFavourite,
    this.isPopular,
    this.title,
    this.price,
    this.description,
  );

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json['id'],
      json['images'],
      json['colors'],
      json['rating'],
      json['isFavourite'],
      json['isPopular'],
      json['title'],
      json['price'],
      json['description'],
    );
  }
  static List<Product> fromListJson(List<dynamic> json) {
    List<Product> result = <Product>[];
    for (Map<String, dynamic> d in json) {
      log('data: $d');
      result.add(Product.fromJson(d));
    }
    print(result);
    return result;
  }
}

// Our demo Products
List<Product> vegetables = [
  Product(1, "assets/images/cbeetroot.jpg", "green", 4.2, true, true,
      "Beetroot", 5.9, "Fresh Beetroot 1 lb"),
  Product(2, "assets/images/cbottlegourd.jpg", "green", 4.5, true, false,
      "Bottle Gourd", 2.9, "Fresh Bottle Gourd 2Pcs"),
  Product(3, "assets/images/cbroccoli.jpg", "green", 4.7, true, true,
      "Broccoli", 4.9, "Fresh Broccoli 3Pcs"),
  Product(4, "assets/images/ccurryleaf.jpg", "green", 4.8, true, true,
      "Curry Leaves", 1.9, "Fresh Curry Leaves 2Pcs"),
  Product(5, "assets/images/ccabbage.jpg", "green", 4.5, true, false, "Cabbage",
      1.2, "Fresh Cabbage 1Pcs")
];

List<Product> organicVegetables = [
  Product(1, "assets/images/beans.jpg", "green", 4.8, true, true, "Beans", 6.9,
      "Farm Fresh Beans 1 lb"),
  Product(2, "assets/images/brinjal.jpg", "green", 4.2, true, false, "Brinjal",
      7.0, "Farm Fresh Brinjal 1 lb"),
  Product(3, "assets/images/Carrot.jpg", "green", 4.5, true, true, "Carrot",
      14.9, "Farm Fresh Carrot 7Pcs"),
  Product(4, "assets/images/cauliflower.jpg", "green", 4.4, true, true,
      "Cauliflower", 14.9, "Farm Fresh Cauliflower 2Pcs"),
  Product(5, "assets/images/cucumber.jpg", "green", 5, true, false, "Cucumber",
      1.2, "Farm Fresh Cucumber 1Pcs")
];

//Change Fruits products

List<Product> fruitsProducts = [
  Product(1, "assets/images/apple.jpg", "red", 4.8, true, true,
      "Organic Ambrosia Apple", 14.9, "Fresh Ambrosia Apple 10Pcs"),
  Product(2, "assets/images/Strawberry.jpg", "red", 4.1, true, true,
      "Organic Strawberries", 14.3, "Fresh Strawberries 1kg"),
  Product(3, "assets/images/papaya.jpg", "yellow", 4.0, true, true,
      "Organic Papaya", 15.0, "Fresh Bananas 2Pcs"),
  Product(4, "assets/images/lemons.jpg", "yellow", 4.9, true, true,
      "Organic Lemons", 6.0, "Fresh Lemons 6Pcs"),
  Product(5, "assets/images/pineapple.jpg", "yellow", 4.6, true, true,
      "Organic Pineapple", 14.9, "Fresh Pineapple 2Pcs")
];

List<Product> organicfruitsProducts = [
  Product(1, "assets/images/apple.jpg", "red", 4.8, true, true,
      "Organic Ambrosia Apple", 14.9, "Fresh Ambrosia Apple 10Pcs"),
  Product(2, "assets/images/Strawberry.jpg", "red", 4.1, true, true,
      "Organic Strawberries", 14.3, "Fresh Strawberries 1kg"),
  Product(3, "assets/images/papaya.jpg", "yellow", 4.0, true, true,
      "Organic Papaya", 15.0, "Fresh Bananas 2Pcs"),
  Product(4, "assets/images/lemons.jpg", "yellow", 4.9, true, true,
      "Organic Lemons", 6.0, "Fresh Lemons 6Pcs"),
  Product(5, "assets/images/pineapple.jpg", "yellow", 4.6, true, true,
      "Organic Pineapple", 14.9, "Fresh Pineapple 2Pcs")
];

List<Product> allPopularProducts = [
  Product(1, "assets/images/cbeetroot.jpg", "green", 4.2, true, true,
      "Beetroot", 5.9, "Fresh Beetroot 1 lb"),
  Product(2, "assets/images/cbottlegourd.jpg", "green", 4.5, true, false,
      "Bottle Gourd", 2.9, "Fresh Bottle Gourd 2Pcs"),
  Product(3, "assets/images/cbroccoli.jpg", "green", 4.7, true, true,
      "Broccoli", 4.9, "Fresh Broccoli 3Pcs"),
  Product(4, "assets/images/ccurryleaf.jpg", "green", 4.8, true, true,
      "Curry Leaves", 1.9, "Fresh Curry Leaves 2Pcs"),
  Product(5, "assets/images/ccabbage.jpg", "green", 4.5, true, false, "Cabbage",
      1.2, "Fresh Cabbage 1Pcs"),
  Product(6, "assets/images/beans.jpg", "green", 4.8, true, true, "Beans", 6.9,
      "Farm Fresh Beans 1 lb"),
  Product(7, "assets/images/brinjal.jpg", "green", 4.2, true, false, "Brinjal",
      7.0, "Farm Fresh Brinjal 1 lb"),
  Product(8, "assets/images/Carrot.jpg", "green", 4.5, true, true, "Carrot",
      14.9, "Farm Fresh Carrot 7Pcs"),
  Product(9, "assets/images/cauliflower.jpg", "green", 4.4, true, true,
      "Cauliflower", 14.9, "Farm Fresh Cauliflower 2Pcs"),
  Product(10, "assets/images/cucumber.jpg", "green", 5, true, false, "Cucumber",
      1.2, "Farm Fresh Cucumber 1Pcs"),
  Product(11, "assets/images/apple.jpg", "red", 4.8, true, true,
      "Organic Ambrosia Apple", 14.9, "Fresh Ambrosia Apple 10Pcs"),
  Product(12, "assets/images/Strawberry.jpg", "red", 4.1, true, true,
      "Organic Strawberries", 14.3, "Fresh Strawberries 1kg"),
  Product(13, "assets/images/papaya.jpg", "yellow", 4.0, true, true,
      "Organic Papaya", 15.0, "Fresh Bananas 2Pcs"),
  Product(14, "assets/images/lemons.jpg", "yellow", 4.9, true, true,
      "Organic Lemons", 6.0, "Fresh Lemons 6Pcs"),
  Product(15, "assets/images/pineapple.jpg", "yellow", 4.6, true, true,
      "Organic Pineapple", 14.9, "Fresh Pineapple 2Pcs")
];

const String description = " Fresh Vegetables ";
