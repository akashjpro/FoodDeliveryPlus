// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_cart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateCartResponse _$UpdateCartResponseFromJson(Map<String, dynamic> json) {
  return _UpdateCartResponse.fromJson(json);
}

/// @nodoc
class _$UpdateCartResponseTearOff {
  const _$UpdateCartResponseTearOff();

  _UpdateCartResponse call({required String data}) {
    return _UpdateCartResponse(
      data: data,
    );
  }

  UpdateCartResponse fromJson(Map<String, Object> json) {
    return UpdateCartResponse.fromJson(json);
  }
}

/// @nodoc
const $UpdateCartResponse = _$UpdateCartResponseTearOff();

/// @nodoc
mixin _$UpdateCartResponse {
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartResponseCopyWith<UpdateCartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartResponseCopyWith<$Res> {
  factory $UpdateCartResponseCopyWith(
          UpdateCartResponse value, $Res Function(UpdateCartResponse) then) =
      _$UpdateCartResponseCopyWithImpl<$Res>;
  $Res call({String data});
}

/// @nodoc
class _$UpdateCartResponseCopyWithImpl<$Res>
    implements $UpdateCartResponseCopyWith<$Res> {
  _$UpdateCartResponseCopyWithImpl(this._value, this._then);

  final UpdateCartResponse _value;
  // ignore: unused_field
  final $Res Function(UpdateCartResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateCartResponseCopyWith<$Res>
    implements $UpdateCartResponseCopyWith<$Res> {
  factory _$UpdateCartResponseCopyWith(
          _UpdateCartResponse value, $Res Function(_UpdateCartResponse) then) =
      __$UpdateCartResponseCopyWithImpl<$Res>;
  @override
  $Res call({String data});
}

/// @nodoc
class __$UpdateCartResponseCopyWithImpl<$Res>
    extends _$UpdateCartResponseCopyWithImpl<$Res>
    implements _$UpdateCartResponseCopyWith<$Res> {
  __$UpdateCartResponseCopyWithImpl(
      _UpdateCartResponse _value, $Res Function(_UpdateCartResponse) _then)
      : super(_value, (v) => _then(v as _UpdateCartResponse));

  @override
  _UpdateCartResponse get _value => super._value as _UpdateCartResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_UpdateCartResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCartResponse
    with DiagnosticableTreeMixin
    implements _UpdateCartResponse {
  const _$_UpdateCartResponse({required this.data});

  factory _$_UpdateCartResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateCartResponseFromJson(json);

  @override
  final String data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateCartResponse(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateCartResponse'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$UpdateCartResponseCopyWith<_UpdateCartResponse> get copyWith =>
      __$UpdateCartResponseCopyWithImpl<_UpdateCartResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateCartResponseToJson(this);
  }
}

abstract class _UpdateCartResponse implements UpdateCartResponse {
  const factory _UpdateCartResponse({required String data}) =
      _$_UpdateCartResponse;

  factory _UpdateCartResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateCartResponse.fromJson;

  @override
  String get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartResponseCopyWith<_UpdateCartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
