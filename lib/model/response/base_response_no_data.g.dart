// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_no_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseNoDaTa<T> _$BaseResponseNoDaTaFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return BaseResponseNoDaTa<T>(
    code: json['code'] as int,
    data: json['data'] as String,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$BaseResponseNoDaTaToJson<T>(
  BaseResponseNoDaTa<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'message': instance.message,
    };
