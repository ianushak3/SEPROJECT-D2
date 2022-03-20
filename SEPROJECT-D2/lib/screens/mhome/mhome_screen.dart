import 'package:flutter/material.dart';
import 'package:shop_app/screens/mhome/components/Mbody.dart';

class MHomeScreen extends StatelessWidget {
  static String routeName = "/mhome/merchant/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MBody(),
    );
  }
}
