import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

import 'package:http/http.dart';

import 'dart:convert';

class PopularProducts extends StatefulWidget {
  State<PopularProducts> createState() => _MyPopularProducts();
}

class _MyPopularProducts extends State<PopularProducts> {
  late Future<List<Product>> futureProducts;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                allPopularProducts.length,
                (index) {
                  if (allPopularProducts[index].isPopular)
                    return ProductCard(product: allPopularProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    futureProducts = getProduct();
  }

  Future<List<Product>> getProduct() async {
    final response = await get(Uri.parse('127.0.0.1:5182/api/vegetables'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Product.fromListJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load todo');
    }
  }
}
