import 'package:flutter/material.dart';
import 'package:shop_app/screens/ccategories/components/cbody.dart';
import 'package:shop_app/size_config.dart';

class cCategoryScreen extends StatelessWidget {
  static String routeName = "/ccategory";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: cBody(),
    );
  }
}