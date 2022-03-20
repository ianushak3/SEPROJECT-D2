import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../size_config.dart';
//All category screen imports
import 'package:shop_app/screens/ccategories/ccategory_screen.dart';
import 'package:shop_app/screens/ocategories/ocategory_screen.dart';
import 'package:shop_app/screens/fruits_categories/fruits_categories_screen.dart';
import 'package:shop_app/screens/organic_fruits_categories/organic_fruits_categories_screen.dart';


// ignore: must_be_immutable
class ViewProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  primary: kPrimaryColor,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  "assets/icons/Back ICon.svg",
                  height: 15,
                ),
              ),
            ),
                  //SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    " VIEW ALL PRODUCTS HERE ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: getProportionateScreenWidth(24),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  // All categories products here
                SpecialOfferCard(
                image: "assets/images/Image Banner 2.jpg",
                category: "Conventional Veggies",
                press: () =>
                    Navigator.pushNamed(context, cCategoryScreen.routeName),
                ),
                SizedBox(height: getProportionateScreenHeight(50)),
                SpecialOfferCard(
                image: "assets/images/Image Banner 3.jpg",
                category: "Organic Farm Fresh Veggies",
                press: () =>
                    Navigator.pushNamed(context, oCategoryScreen.routeName),
                ),
                SizedBox(height: getProportionateScreenHeight(50)),
                SpecialOfferCard(
                image: "assets/images/fruitsbanner.jpeg",
                category: "Conventional Fruits",
                press: () => Navigator.pushNamed(
                    context, fruitsCategoryScreen.routeName),
                ),
                SizedBox(height: getProportionateScreenHeight(50)),
                SpecialOfferCard(
                image: "assets/images/organicfruitsbanner.jpeg",
                category: "Organic Farm Fresh Fruits",
                press: () => Navigator.pushNamed(
                    context, organicfruitsCategoryScreen.routeName),
              ),
              SizedBox(height: getProportionateScreenHeight(50)),
               
                ],
              ),
            ),
          ),
        ),
      ),
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
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
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

