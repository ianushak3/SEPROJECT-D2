import 'package:flutter/material.dart';
import 'package:shop_app/screens/all_products/components/all_products_body.dart';
import 'package:shop_app/size_config.dart';

class allProductsScreen extends StatelessWidget {
  static String routeName = "/allProducts";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: all_products_body(),
    );
  }
}
