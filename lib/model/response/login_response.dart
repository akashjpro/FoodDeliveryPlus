import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'login_response.freezed.dart';

part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String userId,
    required String fullName,
    required String email,
    required String phone,
    required String address,
    required String role,
    required String createdAt,
    required String token,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Object? json) =>
      _$LoginResponseFromJson(json as Map<String, dynamic>);
}
