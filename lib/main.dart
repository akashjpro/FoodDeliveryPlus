import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_model.dart';
import 'package:food_delivery/screens/cart/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<FoodCart> carts = [
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quantity: 1),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Cart(
        carts: carts,
      ),
    );
  }
}
