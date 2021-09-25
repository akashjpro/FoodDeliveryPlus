import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'delete_product_in_cart_response.freezed.dart';

part 'delete_product_in_cart_response.g.dart';

@freezed
class DeleteProductInCartResponse with _$DeleteProductInCartResponse {
  const factory DeleteProductInCartResponse(
      {required int total,
      required List<ProductInCart> items,
      required String createdAt,
      required String updatedAt}) = _DeleteProductInCartResponse;

  factory DeleteProductInCartResponse.fromJson(Object? json) =>
      _$DeleteProductInCartResponseFromJson(json as Map<String, dynamic>);
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
