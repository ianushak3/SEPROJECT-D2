import 'package:flutter/material.dart';
import 'package:shop_app/screens/mhome/components/add_product.dart';

class MHomeAdd extends StatelessWidget {
  static String routeName = "/mhome/merchant/add";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddProduct(),
    );
  }
}
