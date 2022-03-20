import 'package:flutter/material.dart';
import 'package:shop_app/screens/organic_fruits_categories/components/organic_fruits_body.dart';
import 'package:shop_app/size_config.dart';

class organicfruitsCategoryScreen extends StatelessWidget {
  static String routeName = "/organicfruitscategory";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: organic_fruits_body(),
    );
  }
}
