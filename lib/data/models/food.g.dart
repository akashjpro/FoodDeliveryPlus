// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) {
  return Food(
    foodId: json['foodId'] as String,
    foodName: json['foodName'] as String,
    images: json['images'] as List,
    description: json['description'] as String,
    price: json['price'] as int,
    cateId: json['cateId'] as String,
    cateName: json['cateName'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'foodId': instance.foodId,
      'foodName': instance.foodName,
      'images': instance.images,
      'description': instance.description,
      'price': instance.price,
      'cateId': instance.cateId,
      'cateName': instance.cateName,
      'createdAt': instance.createdAt.toIso8601String(),
    };
