import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Align(
          alignment: Alignment.center,
          child:Image.asset(
            "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        ),
        //SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Logout Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.1),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back",
            press: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
          ),
        ),
      ],
    );
  }
}

