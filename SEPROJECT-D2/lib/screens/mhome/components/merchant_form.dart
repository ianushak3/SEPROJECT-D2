import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/mhome/mhome_delete.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/screens/mhome/mhome_add.dart';
import 'package:shop_app/screens/mhome/mhome_view.dart';
import 'package:shop_app/screens/mhome/mhome_modify.dart';

class MerchantForm extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Image.asset(
          "assets/images/merchanthome.jfif",
          height: getProportionateScreenHeight(300),
          width: getProportionateScreenHeight(500)
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        DefaultButton(
          press: () {
              Navigator.pushNamed(context, MHomeAdd.routeName);
            },
          text: " Add the Product",
          ),

        SizedBox(height: getProportionateScreenHeight(30)),
        DefaultButton(
          press: () {
              Navigator.pushNamed(context, MHomeView.routeName);
            },
          text: " View the Products",
          ),
        SizedBox(height: getProportionateScreenHeight(30)),
        DefaultButton(
          press: () {
              Navigator.pushNamed(context, MHomeModify.routeName);
            },
          text: " Modify the Products",
          ),
        SizedBox(height: getProportionateScreenHeight(30)),
        DefaultButton(
          press: () {
              Navigator.pushNamed(context, MHomeDelete.routeName);
            },
          text: "Delete the Products",
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
  }) : super(key: key);

  final String category, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: GestureDetector(
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


