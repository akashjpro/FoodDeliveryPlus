import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'update_cart_response.freezed.dart';

part 'update_cart_response.g.dart';

@freezed
class UpdateCartResponse with _$UpdateCartResponse {
  const factory UpdateCartResponse({required String data}) =
      _UpdateCartResponse;

  factory UpdateCartResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartResponseFromJson(json);
}
