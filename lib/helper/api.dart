import 'dart:convert';

import 'package:food_delivery/model/food_model.dart';
import 'package:http/http.dart' as http;

String urlBase = 'https://freeapi.code4func.com/api/v1';

Future<FoodModel> fetchFood(String foodId) async {
  print(urlBase);
  //final String foodId = '40fc68da-eb8d-42a5-bd91-250fd2996b19';
  final String url = '${urlBase}/food/detail/$foodId';
  print(url);

  final response = await http.get(Uri.parse(url));

  print(response.statusCode);

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);

    print('1');

    return FoodModel.fromJson(result["data"]);
  } else {
    print('0');
    throw Exception('Failed to load food');
  }
}
