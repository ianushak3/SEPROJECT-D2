import 'package:flutter/material.dart';
import 'package:shop_app/screens/login_success/components/Mbody.dart';

class MLoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success/merchant";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          "Login Success",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: MBody(),
    );
  }
}
