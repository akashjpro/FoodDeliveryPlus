import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'get_product_in_cart_response.freezed.dart';

part 'get_product_in_cart_response.g.dart';

@freezed
class GetProductInCartResponse with _$GetProductInCartResponse {
  const factory GetProductInCartResponse(
      {required int total,
      required List<ProductInCart> items,
      required String createdAt,
      required String updatedAt}) = _GetProductInCartResponse;

  factory GetProductInCartResponse.fromJson(Object? json) =>
      _$GetProductInCartResponseFromJson(json as Map<String, dynamic>);
}

@freezed
class ProductInCart with _$ProductInCart {
  const factory ProductInCart(
      {required String orderId,
      required String foodId,
      required String foodName,
      required List<dynamic> images,
      required int quantity,
      required double price,
      required String createdAt,
      required String updatedAt}) = _ProductInCart;

  factory ProductInCart.fromJson(Object? json) =>
      _$ProductInCartFromJson(json as Map<String, dynamic>);
}
