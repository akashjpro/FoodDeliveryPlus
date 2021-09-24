import 'package:dio/dio.dart';
import 'package:food_delivery/model/response/base_response.dart';
import 'package:food_delivery/model/response/food_response.dart';
import 'package:retrofit/http.dart';

part 'api_food.g.dart';

const baseUrl = "https://freeapi.code4func.com/api/v1";

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/food/detail/{foodId}')
  Future<FoodResponse> getFoodDetail(@Path('foodId') String foodId);
}
