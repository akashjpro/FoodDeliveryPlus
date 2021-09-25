import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response_no_data.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponseNoDaTa<T> extends Equatable {
  final int code;
  final String data;
  final String? message;

  const BaseResponseNoDaTa({
    required this.code,
    required this.data,
    required this.message,
  });

  factory BaseResponseNoDaTa.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$BaseResponseNoDaTaFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(
    Map<String, dynamic> Function(T value) toJsonT,
  ) {
    return _$BaseResponseNoDaTaToJson<T>(this, toJsonT);
  }

  @override
  List<dynamic> get props => [
        code,
        data,
        message,
      ];
}
