// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_in_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetProductInCartResponse _$$_GetProductInCartResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetProductInCartResponse(
      total: json['total'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => ProductInCart.fromJson(e as Object))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_GetProductInCartResponseToJson(
        _$_GetProductInCartResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_ProductInCart _$$_ProductInCartFromJson(Map<String, dynamic> json) =>
    _$_ProductInCart(
      orderId: json['orderId'] as String,
      foodId: json['foodId'] as String,
      foodName: json['foodName'] as String,
      images: json['images'] as List<dynamic>,
      quantity: json['quantity'] as int,
      price: (json['price'] as num).toDouble(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$_ProductInCartToJson(_$_ProductInCart instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'foodId': instance.foodId,
      'foodName': instance.foodName,
      'images': instance.images,
      'quantity': instance.quantity,
      'price': instance.price,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
