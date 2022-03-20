import 'package:flutter/material.dart';
import 'package:shop_app/screens/fruits_categories/components/fruits_body.dart';
import 'package:shop_app/size_config.dart';

class fruitsCategoryScreen extends StatelessWidget {
  static String routeName = "/fruitscategory";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: fruits_body(),
    );
  }
}
