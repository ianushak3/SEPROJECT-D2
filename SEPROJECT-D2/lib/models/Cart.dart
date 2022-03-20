import 'package:flutter/material.dart';

import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

// Demo data for my cart

List<Cart> demoCarts = [
  Cart(product: allPopularProducts[0], numOfItem: 2),
  Cart(product: allPopularProducts[1], numOfItem: 1),
  Cart(product: allPopularProducts[3], numOfItem: 1),
];
