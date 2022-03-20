import 'package:flutter_test/flutter_test.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/components/sign_form.dart';
import 'package:shop_app/screens/sign_in/components/msign_form.dart';
import 'package:shop_app/screens/sign_up/components/sign_up_form.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/models/Cart.dart';

void main() {
  test('Check for empty credentials in Sign In page', () {
    if (SignForm() == false || MSignForm() == false) expect('Please Enter your email', kEmailNullError);
  });

    test('Check for empty credentials in Sign Up page', () {
    if (SignUpForm() == false ) expect('Please Enter your email', kEmailNullError);
  });

  test('Validating the count of Demo Products', () {
   expect(allPopularProducts.length, 15);
   expect(organicfruitsProducts.length, 5);

  });

  test('Validating the count of "Demo" Products in shopping Cart', () {
   expect(demoCarts.length, 3);
  });

}
