import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/mhome/mhome_screen.dart';
import 'package:shop_app/size_config.dart';

class MSuccess1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Align(
          alignment: Alignment.center,
          child:Image.asset(
            "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Product Added Successfully",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, MHomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}

class MSuccess2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Align(
          alignment: Alignment.center,
          child:Image.asset(
            "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Product Updated Successfully",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, MHomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}

class MSuccess3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Align(
          alignment: Alignment.center,
          child:Image.asset(
            "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Product Deleted Successfully",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, MHomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}

