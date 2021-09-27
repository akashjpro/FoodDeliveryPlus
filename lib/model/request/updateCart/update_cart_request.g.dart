// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCartRequest _$UpdateCartRequestFromJson(Map<String, dynamic> json) =>
    UpdateCartRequest(
      json['orderId'] as String,
      json['foodId'] as String,
      json['quantity'] as int,
    );

Map<String, dynamic> _$UpdateCartRequestToJson(UpdateCartRequest instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'foodId': instance.foodId,
      'quantity': instance.quantity,
    };
