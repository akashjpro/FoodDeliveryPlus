import 'package:dio/dio.dart';
import 'package:food_delivery/model/response/login_response.dart';
import 'package:food_delivery/model/request/login_request.dart';
import 'package:food_delivery/model/request/request.dart';
import 'package:retrofit/retrofit.dart';

import 'package:food_delivery/model/response/base_response.dart';

part 'api_client.g.dart';


const baseUrl = "https://freeapi.code4func.com/api/v1";

@RestApi(baseUrl: baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("/user/sign-in")
  Future<BaseResponse<LoginResponse>> login(@Body() Request request);
}