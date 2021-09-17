// Categories
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/screens.dart';

List<Map> categories = [
  {'name': 'Foods', 'isActive': true},
  {'name': 'Drinks', 'isActive': false},
  {'name': 'Snacks', 'isActive': false},
  {'name': 'Sauces', 'isActive': false},
];
// Foods
List<Map> foods = [
  {
    'name': 'Veggie Tomato Mix',
    'imgPath': 'assets/images/food_2.png',
    'price': 'N1,900',
  },
  {
    'name': 'Spicy Fish Sauce',
    'imgPath': 'assets/images/food_3.png',
    'price': 'N1,900',
  },
];

List<Widget> widgetOptions = [
  HomeScreen(),
  Text('screen 2'),
  Text('screen 3'),
  Text('screen 4'),
];

List<Map> menu = [
  {
    'icon': Icon(Icons.person_outline_rounded, color: Colors.white),
    'title': 'Profile'
  },
  {
    'icon': Icon(Icons.add_shopping_cart, color: Colors.white),
    'title': 'Orders'
  },
  {
    'icon': Icon(Icons.local_offer_outlined, color: Colors.white),
    'title': 'Offer and Promo'
  },
  {
    'icon': Icon(Icons.sticky_note_2_outlined, color: Colors.white),
    'title': 'Privacy Policy'
  },
  {
    'icon': Icon(Icons.security_outlined, color: Colors.white),
    'title': 'Security'
  },
];
