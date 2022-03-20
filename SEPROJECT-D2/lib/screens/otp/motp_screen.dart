import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import 'package:shop_app/screens/otp/components/Mbody.dart';

class mOtpScreen extends StatelessWidget {
  static String routeName = "/otp/merchant";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: MBody(),
    );
  }
}
