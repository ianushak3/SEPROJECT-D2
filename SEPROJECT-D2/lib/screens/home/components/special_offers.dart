import 'package:flutter/material.dart';
import 'package:shop_app/screens/ccategories/ccategory_screen.dart';
import 'package:shop_app/screens/ocategories/ocategory_screen.dart';
import 'package:shop_app/screens/fruits_categories/fruits_categories_screen.dart';
import 'package:shop_app/screens/organic_fruits_categories/organic_fruits_categories_screen.dart';
import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Special for you", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/Image Banner 2.jpg",
                category: "Conventional Veggies",
                press: () =>
                    Navigator.pushNamed(context, cCategoryScreen.routeName),
              ),
              SpecialOfferCard(
                image: "assets/images/Image Banner 3.jpg",
                category: "Organic Farm Fresh Veggies",
                press: () =>
                    Navigator.pushNamed(context, oCategoryScreen.routeName),
              ),
              SpecialOfferCard(
                image: "assets/images/fruitsbanner.jpeg",
                category: "Conventional Fruits",
                press: () => Navigator.pushNamed(
                    context, fruitsCategoryScreen.routeName),
              ),
              SpecialOfferCard(
                image: "assets/images/organicfruitsbanner.jpeg",
                category: "Organic Farm Fresh Fruits",
                press: () => Navigator.pushNamed(
                    context, organicfruitsCategoryScreen.routeName),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(165),
          height: getProportionateScreenWidth(165),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  color: Colors.white.withOpacity(0.7),
                  colorBlendMode: BlendMode.modulate,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.1),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
