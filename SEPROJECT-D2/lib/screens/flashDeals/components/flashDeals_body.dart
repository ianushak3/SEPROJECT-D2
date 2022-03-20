import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'package:shop_app/screens/flashDeals/components/flashDeals_content.dart';

class flashDeals_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            flashDeals(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
