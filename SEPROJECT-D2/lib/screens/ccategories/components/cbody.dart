import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'package:shop_app/screens/ccategories/components/ccategory_content.dart';


class cBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            cPopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
