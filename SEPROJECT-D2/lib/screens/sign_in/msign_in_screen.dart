import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/components/Mbody.dart';

class MSignInScreen extends StatelessWidget {
  static String routeName = "/sign_in/merchant";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: MBody(),
    );
  }
}
