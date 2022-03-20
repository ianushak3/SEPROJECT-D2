import 'package:flutter/material.dart';
import 'package:shop_app/screens/mhome/components/delete_product.dart';

class MHomeDelete extends StatelessWidget {
  static String routeName = "/mhome/merchant/delete";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DeleteProduct(),
    );
  }
}
