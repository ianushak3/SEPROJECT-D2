import 'package:flutter/material.dart';
import 'package:shop_app/screens/flashDeals/components/flashDeals_body.dart';
import 'package:shop_app/size_config.dart';

class flashDealsScreen extends StatelessWidget {
  static String routeName = "/flashDeals";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: flashDeals_body(),
    );
  }
}
