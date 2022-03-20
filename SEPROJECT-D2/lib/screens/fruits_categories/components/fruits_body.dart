import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'package:shop_app/screens/fruits_categories/components/fruits_content_screen.dart';

class fruits_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            fruitsProduct(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
