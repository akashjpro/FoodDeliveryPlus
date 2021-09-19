import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_model.dart';
import 'package:food_delivery/screens/cart/cart.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_delivery/screens/screens.dart';
import 'package:food_delivery/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      theme: theme(),
      home: Bridge(),
    );
  }
}

class Bridge extends StatefulWidget {
  const Bridge({Key? key}) : super(key: key);

  @override
  _BridgeState createState() => _BridgeState();
}

class _BridgeState extends State<Bridge> {
  final _zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ZoomDrawer(
      style: DrawerStyle.Style1,
      controller: _zoomDrawerController,
      mainScreen: HomeScreen(drawerController: _zoomDrawerController),
      menuScreen: DrawerScreen(),
      borderRadius: 30.0,
      showShadow: true,
      angle: 0.0,
      backgroundColor: Colors.grey[300]!,
      slideWidth: MediaQuery.of(context).size.width * .65,
    )
        // (ZoomDrawer.of(context)!.widget.isRtl ? .45 : 0.65)),
        );
  }
}
