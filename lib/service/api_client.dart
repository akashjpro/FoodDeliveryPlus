import 'package:dio/dio.dart' hide Headers;
import 'package:food_delivery/model/response/base_response_no_data.dart';
import 'package:food_delivery/model/response/deleteProductInCart/delete_product_in_cart_response.dart';
import 'package:food_delivery/model/response/getProductInCart/get_product_in_cart_response.dart';
import 'package:food_delivery/model/response/login_response.dart';
import 'package:food_delivery/model/request/request.dart';
import 'package:food_delivery/model/response/updateCart/update_cart_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:food_delivery/model/response/base_response.dart';

part 'api_client.g.dart';

const baseUrl = "https://freeapi.code4func.com/api/v1";

@RestApi(baseUrl: baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST("/user/sign-in")
  Future<BaseResponse<LoginResponse>> login(@Body() Request request);
  @GET("/order/shopping-cart")
  Future<BaseResponse<GetProductInCartResponse>> getProductInCart(
      @Header("Authorization") String token);
  @POST("/order/update")
  Future<BaseResponseNoDaTa<UpdateCartResponse>> updateCart(
      @Header("Authorization") String token, @Body() Request request);
  @DELETE("/order/delete")
  Future<BaseResponse<DeleteProductInCartResponse>> deleteCart(
      @Header("Authorization") String token, @Body() Request request);
}
