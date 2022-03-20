import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'package:shop_app/screens/ocategories/components/ocategory_content.dart';


class oBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            oPopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
