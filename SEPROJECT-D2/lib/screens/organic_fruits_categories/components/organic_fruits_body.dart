import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'package:shop_app/screens/organic_fruits_categories/components/organic_fruits_content_screen.dart';

class organic_fruits_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            organicfruitsProduct(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
