import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/components/logout_success.dart';

class LogoutSuccessScreen extends StatelessWidget {
  static String routeName = "/profile/logout_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          "Logout Success",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Logout(),
    );
  }
}
