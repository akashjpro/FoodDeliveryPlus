// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_product_in_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteProductInCartResponse _$_$_DeleteProductInCartResponseFromJson(
    Map<String, dynamic> json) {
  return _$_DeleteProductInCartResponse(
    total: json['total'] as int,
    items: (json['items'] as List<dynamic>)
        .map((e) => ProductInCart.fromJson(e as Object))
        .toList(),
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
  );
}

Map<String, dynamic> _$_$_DeleteProductInCartResponseToJson(
        _$_DeleteProductInCartResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_ProductInCart _$_$_ProductInCartFromJson(Map<String, dynamic> json) {
  return _$_ProductInCart(
    orderId: json['orderId'] as String,
    foodId: json['foodId'] as String,
    foodName: json['foodName'] as String,
    images: json['images'] as List<dynamic>,
    quantity: json['quantity'] as int,
    price: (json['price'] as num).toDouble(),
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
  );
}

Map<String, dynamic> _$_$_ProductInCartToJson(_$_ProductInCart instance) =>
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
