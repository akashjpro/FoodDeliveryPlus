import 'package:flutter/material.dart';
import 'package:food_delivery/screens/cart/cart_screen.dart';
import 'package:food_delivery/screens/loginAndSignUp/loginAndSignUp.dart';
import 'package:food_delivery/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: LoginAndSignUp(),
    );
  }
}

