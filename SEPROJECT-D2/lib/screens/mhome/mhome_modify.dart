import 'package:flutter/material.dart';
import 'package:shop_app/screens/mhome/components/modify_product.dart';

class MHomeModify extends StatelessWidget {
  static String routeName = "/mhome/merchant/modify";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModifyProduct(),
    );
  }
}
