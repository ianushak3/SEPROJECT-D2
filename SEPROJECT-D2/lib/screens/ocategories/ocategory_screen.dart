import 'package:flutter/material.dart';
import 'package:shop_app/screens/ocategories/components/obody.dart';
import 'package:shop_app/size_config.dart';

class oCategoryScreen extends StatelessWidget {
  static String routeName = "/ocategory";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: oBody(),
    );
  }
}