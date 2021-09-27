import 'dart:async';

import 'package:dio/dio.dart';
import 'package:food_delivery/base/base_bloc.dart';
import 'package:food_delivery/model/response/detailFood/food_response.dart';
import 'package:food_delivery/service/api_client.dart';

class FoodDetailBloc extends BaseBloc {
  StreamController<FoodResponse> _foodResponseController =
      StreamController<FoodResponse>();

  Stream<FoodResponse> get foodDetailStream => _foodResponseController.stream;

  late String foodId = '40fc68da-eb8d-42a5-bd91-250fd2996b19';

  late FoodResponse food;

  initData() async {
    ApiClient(Dio()).getFoodDetails(foodId).then((value) => food);
  }

  @override
  void dispatchEvent(event) {
    // TODO: implement dispatchEvent
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
