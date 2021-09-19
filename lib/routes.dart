// We use name route
// All our routes will be available here
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/screens/cart/cart_screen.dart';
import 'package:food_delivery/screens/detail/detail_page.dart';
import 'package:food_delivery/screens/home/widgets/home_bridge.dart';
import 'package:food_delivery/screens/loginAndSignUp/loginAndSignUp.dart';


final Map<String, WidgetBuilder> routes = {
  LoginAndSignUp.routeName: (context) => LoginAndSignUp(),
  HomeBridge.routeName: (context) => HomeBridge(),
  DetailPage.routeName: (context) => DetailPage(),
  CartScreen.routeName: (context) => CartScreen(),
};