import 'package:flutter/material.dart';
import 'package:shop_app/screens/mhome/components/success_page.dart';

class MHomeSuccess1 extends StatelessWidget {
  static String routeName = "/mhome/merchant/addsuccess";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          "Product Added Successfully",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: MSuccess1(),
    );
  }
}

class MHomeSuccess2 extends StatelessWidget {
  static String routeName = "/mhome/merchant/modifysuccess";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          "Product Updated Successfully",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: MSuccess2(),
    );
  }
}

class MHomeSuccess3 extends StatelessWidget {
  static String routeName = "/mhome/merchant/deletesuccess";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          "Product Deleted Successfully",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: MSuccess3(),
    );
  }
}

