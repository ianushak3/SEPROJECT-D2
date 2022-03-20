import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart_checkout/components/checkout_body.dart';

class checkoutSuccessScreen extends StatelessWidget {
  static String routeName = "/cart_checkout";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Checkout Success",textAlign: TextAlign.center,),
        centerTitle: true,
      ),
      body: checkoutBody(),
    );
  }
}
