import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/mhome/mhome_screen.dart';
import 'package:shop_app/screens/mhome/mhome_success.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../size_config.dart';

// ignore: must_be_immutable
class DeleteProduct extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();
  var items = [
    'Conventional Vegetables',
    'Organic Vegetables',
    'Conventional Fruits',
    'Organic Fruits'
  ];
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
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    "DELETE YOUR PRODUCTS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: "Categories",
                      hintText: "Choose the category",
                      suffixIcon: PopupMenuButton<String>(
                        icon: const Icon(Icons.arrow_drop_down),
                        onSelected: (String value) {
                          _controller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return items
                              .map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(
                                child: new Text(value), value: value);
                          }).toList();
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Product",
                      hintText: "Enter the Product Name",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  DefaultButton(
                    text: "DELETE",
                    press: () {
                      Navigator.pushNamed(context, MHomeSuccess3.routeName);
                    },
                  )
                ],
              ),
            ),
            
          ),
        ),
      ),
      //   floatingActionButton: FloatingActionButton(
      //     backgroundColor: Colors.green,
      //     onPressed: () {
      //   },
      //   child:Icon(Icons.add, color: Colors.white,),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
