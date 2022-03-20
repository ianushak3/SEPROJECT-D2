// import 'package:flutter/material.dart';
// import 'package:shop_app/components/product_card.dart';
// import 'package:shop_app/models/Product.dart';

// import '../../../size_config.dart';

// class oPopularProducts extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: Text(
//             "ORGANIC VEGETABLES",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.green,
//               fontSize: 30,
//             ),
//           ),
//         ),
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
//                       .shrink(); // here by default width and height is 0
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

class oPopularProducts extends StatefulWidget {
  State<oPopularProducts> createState() => _MyoPopularProducts();
}

class _MyoPopularProducts extends State<oPopularProducts> {
  late Future<List<Product>> futureProducts;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            "ORGANIC VEGETABLES",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
              fontSize: 30,
            ),
          ),
        ),
        SizedBox(height: 10),
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
            ))
      ],
    );
  }

  // Widget buildNicerTodoCard(Product todo) {
  //   return Card(
  //     elevation: 2.0,
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //     child: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: Column(
  //         children: <Widget>[
  //           Text(
  //             todo.title,
  //             style: const TextStyle(
  //               fontSize: 20.0,
  //               fontWeight: FontWeight.w700,
  //               fontFamily: 'Palatino',
  //             ),
  //           ),
  //           Text(todo.colors)
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  void initState() {
    super.initState();
    futureProducts = getProduct();
  }

  Future<List<Product>> getProduct() async {
    final response =
        await get(Uri.parse('http://127.0.0.1:5182/api/organicVeggies'));

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
