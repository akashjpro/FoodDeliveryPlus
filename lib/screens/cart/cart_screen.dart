import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/model/cart_model.dart';

import 'cart.dart';

class CartScreen extends StatelessWidget {
  List<FoodCart> carts = [
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
    FoodCart(
        name: 'Veggie tomato mix',
        price: 1.900,
        img: 'images/item_img.png',
        quanlity: 1),
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
