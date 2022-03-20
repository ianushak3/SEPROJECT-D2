import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/flashDeals.dart';

import '../constants.dart';
import '../size_config.dart';

class flashDealsCard extends StatelessWidget {
  const flashDealsCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final flashDealsModal product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Hero(
                  tag: product.images.toString(),
                  child: Image.asset(product.images),
                ),
              ),
            ),
            const SizedBox(height: 1),
            Text(
              product.description,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
