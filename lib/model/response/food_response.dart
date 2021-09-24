import 'package:food_delivery/model/response/images_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_response.freezed.dart';
part 'food_response.g.dart';

@freezed
class FoodResponse with _$FoodResponse {
  const factory FoodResponse({
    String? foodId,
    String? foodName,
    List<ImagesResponse>? images,
    String? description,
    int? price,
    String? cateId,
    String? cateName,
    String? createdAt,
    String? updatedAt,
  }) = _FoodResponse;

  factory FoodResponse.fromJson(Object? json) =>
      _$FoodResponseFromJson(json as Map<String, dynamic>);
}
