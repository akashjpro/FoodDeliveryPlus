// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodResponse _$_$_FoodResponseFromJson(Map<String, dynamic> json) {
  return _$_FoodResponse(
    foodId: json['foodId'] as String,
    foodName: json['foodName'] as String,
    images: (json['images'] as List<dynamic>)
        .map((e) => ImageResponse.fromJson(e as Object))
        .toList(),
    description: json['description'] as String,
    price: json['price'] as int,
    cateId: json['cateId'] as String,
    cateName: json['cateName'] as String,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
  );
}

Map<String, dynamic> _$_$_FoodResponseToJson(_$_FoodResponse instance) =>
    <String, dynamic>{
      'foodId': instance.foodId,
      'foodName': instance.foodName,
      'images': instance.images,
      'description': instance.description,
      'price': instance.price,
      'cateId': instance.cateId,
      'cateName': instance.cateName,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_ImageResponse _$_$_ImageResponseFromJson(Map<String, dynamic> json) {
  return _$_ImageResponse(
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$_$_ImageResponseToJson(_$_ImageResponse instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
    };
