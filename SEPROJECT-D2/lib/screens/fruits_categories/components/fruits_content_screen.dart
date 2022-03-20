// import 'package:flutter/material.dart';
// import 'package:shop_app/components/product_card.dart';
// import 'package:shop_app/models/Product.dart';

// import '../../../size_config.dart';

// class fruitsProduct extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: Text(
//             "CONVENTIONAL FRUITS",
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
//                   if (fruitsProducts[index].isPopular)
//                     return ProductCard(product: fruitsProducts[index]);

//                   return SizedBox.shrink();
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

class fruitsProduct extends StatefulWidget {
  State<fruitsProduct> createState() => _MyfruitsProduct();
}

class _MyfruitsProduct extends State<fruitsProduct> {
  late Future<List<Product>> futureProducts;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            "CONVENTIONAL FRUITS",
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
    futureProducts = getFruits();
  }

  Future<List<Product>> getFruits() async {
    final response = await get(Uri.parse('http://127.0.0.1:5182/api/fruits'));

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
