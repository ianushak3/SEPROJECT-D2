import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/flashDeals/components/flashDeals_content.dart';
import 'package:shop_app/screens/flashDeals/flashDeals_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/mhome/mhome_delete.dart';
import 'package:shop_app/screens/mhome/mhome_modify.dart';
import 'package:shop_app/screens/mhome/mhome_screen.dart';
import 'package:shop_app/screens/mhome/mhome_add.dart';
import 'package:shop_app/screens/mhome/mhome_success.dart';
import 'package:shop_app/screens/mhome/mhome_view.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/login_success/mlogin_success_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/otp/motp_screen.dart';
import 'package:shop_app/screens/profile/logoutsuccess_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_in/msign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/ccategories/ccategory_screen.dart';
import 'package:shop_app/screens/ocategories/ocategory_screen.dart';
import 'package:shop_app/screens/fruits_categories/fruits_categories_screen.dart';
import 'package:shop_app/screens/organic_fruits_categories/organic_fruits_categories_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/screens/cart_checkout/checkout_success.dart';
import 'package:shop_app/screens/all_products/all_products_screen.dart';
import 'package:shop_app/screens/flashDeals/flashDeals_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  MSignInScreen.routeName: (context) => MSignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  LogoutSuccessScreen.routeName: (context) => LogoutSuccessScreen(),
  MLoginSuccessScreen.routeName: (context) => MLoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  mOtpScreen.routeName: (context) => mOtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MHomeScreen.routeName: (context) => MHomeScreen(),
  MHomeAdd.routeName: (context) => MHomeAdd(),
  MHomeView.routeName: (context) => MHomeView(),
  MHomeModify.routeName: (context) => MHomeModify(),
  MHomeDelete.routeName: (context) => MHomeDelete(),
  MHomeSuccess1.routeName: (context) => MHomeSuccess1(),
  MHomeSuccess2.routeName: (context) => MHomeSuccess2(),
  MHomeSuccess3.routeName: (context) => MHomeSuccess3(),
  cCategoryScreen.routeName: (context) => cCategoryScreen(),
  oCategoryScreen.routeName: (context) => oCategoryScreen(),
  fruitsCategoryScreen.routeName: (context) => fruitsCategoryScreen(),
  organicfruitsCategoryScreen.routeName: (context) =>
      organicfruitsCategoryScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  checkoutSuccessScreen.routeName: (context) => checkoutSuccessScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  allProductsScreen.routeName: (context) => allProductsScreen(),
  flashDealsScreen.routeName: (context) => flashDealsScreen()
};
