import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_response.freezed.dart';
part 'food_response.g.dart';

@freezed
class FoodResponse with _$FoodResponse {
  const factory FoodResponse({
    required String foodId,
    required String foodName,
    required List<ImageResponse> images,
    required String description,
    required int price,
    required String cateId,
    required String cateName,
    required String createdAt,
    required String updatedAt,
  }) = _FoodResponse;

  factory FoodResponse.fromJson(Object? json) =>
      _$FoodResponseFromJson(json as Map<String, dynamic>);
}

@freezed
class ImageResponse with _$ImageResponse {
  const factory ImageResponse({
    required String imageUrl,
  }) = _ImageResponse;

  factory ImageResponse.fromJson(Object? json) =>
      _$ImageResponseFromJson(json as Map<String, dynamic>);
}
