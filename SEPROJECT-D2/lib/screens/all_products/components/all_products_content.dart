// import 'package:flutter/material.dart';
// import 'package:shop_app/components/product_card.dart';
// import 'package:shop_app/models/Product.dart';

// import '../../../size_config.dart';

// class cPopularProducts extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: Text(
//             "CONVENTIONAL VEGETABLES",
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color:Colors.green,
//                fontSize: 30,
//                ),
//              ),
//           ),
//         SizedBox(height: getProportionateScreenWidth(50)),
//         SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Row(
//             children: [
//               ...List.generate(
//                 1,
//                 (index) {
//                   if (demoProducts[index].isPopular)
//                     return ProductCard(product: demoProducts[0]);

//                   return SizedBox
//                       .shrink();
//                 },
//               ),
//               SizedBox(width: getProportionateScreenWidth(20)),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

import 'package:http/http.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';

import '../../../size_config.dart';

class allProducts extends StatefulWidget {
  State<allProducts> createState() => _allProductsProducts();
}

class _allProductsProducts extends State<allProducts> {
  late Future<List<Product>> futureProducts;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            "ALL FRUITS AND VEGETABLES",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
              fontSize: 30,
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(50)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData == false) {
                return const CircularProgressIndicator();
              }
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: (snapshot.data as List<Product>).length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                        //buildNicerTodoCard(
                        //  (snapshot.data as List<Product>)[index]);

                        ProductCard(
                            product: (snapshot.data as List<Product>)[index]);
                  });
            },
            future: futureProducts,
          ),
        )
      ],
    );
  }

  void initState() {
    super.initState();
    futureProducts = getAllProducts();
  }

  Future<List<Product>> getAllProducts() async {
    final response =
        await get(Uri.parse('http://127.0.0.1:5182/api/allProducts'));

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
