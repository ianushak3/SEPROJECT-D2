import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'package:shop_app/screens/all_products/components/all_products_content.dart';

class all_products_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            allProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
