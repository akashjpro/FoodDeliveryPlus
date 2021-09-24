// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'images_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImagesResponse _$ImagesResponseFromJson(Map<String, dynamic> json) {
  return _ImagesResponse.fromJson(json);
}

/// @nodoc
class _$ImagesResponseTearOff {
  const _$ImagesResponseTearOff();

  _ImagesResponse call({String? imageUrl}) {
    return _ImagesResponse(
      imageUrl: imageUrl,
    );
  }

  ImagesResponse fromJson(Map<String, Object> json) {
    return ImagesResponse.fromJson(json);
  }
}

/// @nodoc
const $ImagesResponse = _$ImagesResponseTearOff();

/// @nodoc
mixin _$ImagesResponse {
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesResponseCopyWith<ImagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesResponseCopyWith<$Res> {
  factory $ImagesResponseCopyWith(
          ImagesResponse value, $Res Function(ImagesResponse) then) =
      _$ImagesResponseCopyWithImpl<$Res>;
  $Res call({String? imageUrl});
}

/// @nodoc
class _$ImagesResponseCopyWithImpl<$Res>
    implements $ImagesResponseCopyWith<$Res> {
  _$ImagesResponseCopyWithImpl(this._value, this._then);

  final ImagesResponse _value;
  // ignore: unused_field
  final $Res Function(ImagesResponse) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ImagesResponseCopyWith<$Res>
    implements $ImagesResponseCopyWith<$Res> {
  factory _$ImagesResponseCopyWith(
          _ImagesResponse value, $Res Function(_ImagesResponse) then) =
      __$ImagesResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? imageUrl});
}

/// @nodoc
class __$ImagesResponseCopyWithImpl<$Res>
    extends _$ImagesResponseCopyWithImpl<$Res>
    implements _$ImagesResponseCopyWith<$Res> {
  __$ImagesResponseCopyWithImpl(
      _ImagesResponse _value, $Res Function(_ImagesResponse) _then)
      : super(_value, (v) => _then(v as _ImagesResponse));

  @override
  _ImagesResponse get _value => super._value as _ImagesResponse;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_ImagesResponse(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImagesResponse implements _ImagesResponse {
  const _$_ImagesResponse({this.imageUrl});

  factory _$_ImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ImagesResponseFromJson(json);

  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ImagesResponse(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagesResponse &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$ImagesResponseCopyWith<_ImagesResponse> get copyWith =>
      __$ImagesResponseCopyWithImpl<_ImagesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImagesResponseToJson(this);
  }
}

abstract class _ImagesResponse implements ImagesResponse {
  const factory _ImagesResponse({String? imageUrl}) = _$_ImagesResponse;

  factory _ImagesResponse.fromJson(Map<String, dynamic> json) =
      _$_ImagesResponse.fromJson;

  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImagesResponseCopyWith<_ImagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
