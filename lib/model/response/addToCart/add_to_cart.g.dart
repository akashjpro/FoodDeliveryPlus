// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataAddToCart _$_$_DataAddToCartFromJson(Map<String, dynamic> json) {
  return _$_DataAddToCart(
    orderId: json['orderId'] as String,
    total: json['total'] as int,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
  );
}

Map<String, dynamic> _$_$_DataAddToCartToJson(_$_DataAddToCart instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'total': instance.total,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };