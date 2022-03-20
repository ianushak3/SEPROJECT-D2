import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/all_products/all_products_screen.dart';
import 'package:shop_app/screens/flashDeals/flashDeals_screen.dart';
import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "All Products"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryCard(
            icon: "assets/icons/Flash Icon.svg",
            text: "Flash Deal",
            press: () =>
                Navigator.pushNamed(context, flashDealsScreen.routeName),
          ),
          CategoryCard(
            icon: "assets/icons/Bill Icon.svg",
            text: "Bill",
            press: () =>
                Navigator.pushNamed(context, allProductsScreen.routeName),
          ),
          CategoryCard(
            icon: "assets/icons/Discover.svg",
            text: "All Products",
            press: () =>
                Navigator.pushNamed(context, allProductsScreen.routeName),
          ),
        ],
        // List.generate(
        //   categories.length,
        //   (index) => CategoryCard(
        //     icon: categories[index]["icon"],
        //     text: categories[index]["text"],
        //     press: () {},
        //   ),
        // ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(200),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
