// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$_$_LoginResponseFromJson(Map<String, dynamic> json) {
  return _$_LoginResponse(
    userId: json['userId'] as String,
    fullName: json['fullName'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    address: json['address'] as String,
    role: json['role'] as String,
    createdAt: json['createdAt'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'role': instance.role,
      'createdAt': instance.createdAt,
      'token': instance.token,
    };
