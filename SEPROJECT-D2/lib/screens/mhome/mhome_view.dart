import 'package:flutter/material.dart';
import 'package:shop_app/screens/mhome/components/view_product.dart';

class MHomeView extends StatelessWidget {
  static String routeName = "/mhome/merchant/view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewProduct(),
    );
  }
}
