// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'food_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodResponse _$FoodResponseFromJson(Map<String, dynamic> json) {
  return _FoodResponse.fromJson(json);
}

/// @nodoc
class _$FoodResponseTearOff {
  const _$FoodResponseTearOff();

  _FoodResponse call(
      {required String foodId,
      required String foodName,
      required List<ImageResponse> images,
      required String description,
      required int price,
      required String cateId,
      required String cateName,
      required String createdAt,
      required String updatedAt}) {
    return _FoodResponse(
      foodId: foodId,
      foodName: foodName,
      images: images,
      description: description,
      price: price,
      cateId: cateId,
      cateName: cateName,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  FoodResponse fromJson(Map<String, Object> json) {
    return FoodResponse.fromJson(json);
  }
}

/// @nodoc
const $FoodResponse = _$FoodResponseTearOff();

/// @nodoc
mixin _$FoodResponse {
  String get foodId => throw _privateConstructorUsedError;
  String get foodName => throw _privateConstructorUsedError;
  List<ImageResponse> get images => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get cateId => throw _privateConstructorUsedError;
  String get cateName => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodResponseCopyWith<FoodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodResponseCopyWith<$Res> {
  factory $FoodResponseCopyWith(
          FoodResponse value, $Res Function(FoodResponse) then) =
      _$FoodResponseCopyWithImpl<$Res>;
  $Res call(
      {String foodId,
      String foodName,
      List<ImageResponse> images,
      String description,
      int price,
      String cateId,
      String cateName,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$FoodResponseCopyWithImpl<$Res> implements $FoodResponseCopyWith<$Res> {
  _$FoodResponseCopyWithImpl(this._value, this._then);

  final FoodResponse _value;
  // ignore: unused_field
  final $Res Function(FoodResponse) _then;

  @override
  $Res call({
    Object? foodId = freezed,
    Object? foodName = freezed,
    Object? images = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? cateId = freezed,
    Object? cateName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      foodId: foodId == freezed
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      foodName: foodName == freezed
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageResponse>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      cateId: cateId == freezed
          ? _value.cateId
          : cateId // ignore: cast_nullable_to_non_nullable
              as String,
      cateName: cateName == freezed
          ? _value.cateName
          : cateName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FoodResponseCopyWith<$Res>
    implements $FoodResponseCopyWith<$Res> {
  factory _$FoodResponseCopyWith(
          _FoodResponse value, $Res Function(_FoodResponse) then) =
      __$FoodResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String foodId,
      String foodName,
      List<ImageResponse> images,
      String description,
      int price,
      String cateId,
      String cateName,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$FoodResponseCopyWithImpl<$Res> extends _$FoodResponseCopyWithImpl<$Res>
    implements _$FoodResponseCopyWith<$Res> {
  __$FoodResponseCopyWithImpl(
      _FoodResponse _value, $Res Function(_FoodResponse) _then)
      : super(_value, (v) => _then(v as _FoodResponse));

  @override
  _FoodResponse get _value => super._value as _FoodResponse;

  @override
  $Res call({
    Object? foodId = freezed,
    Object? foodName = freezed,
    Object? images = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? cateId = freezed,
    Object? cateName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_FoodResponse(
      foodId: foodId == freezed
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
      foodName: foodName == freezed
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageResponse>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      cateId: cateId == freezed
          ? _value.cateId
          : cateId // ignore: cast_nullable_to_non_nullable
              as String,
      cateName: cateName == freezed
          ? _value.cateName
          : cateName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodResponse implements _FoodResponse {
  const _$_FoodResponse(
      {required this.foodId,
      required this.foodName,
      required this.images,
      required this.description,
      required this.price,
      required this.cateId,
      required this.cateName,
      required this.createdAt,
      required this.updatedAt});

  factory _$_FoodResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_FoodResponseFromJson(json);

  @override
  final String foodId;
  @override
  final String foodName;
  @override
  final List<ImageResponse> images;
  @override
  final String description;
  @override
  final int price;
  @override
  final String cateId;
  @override
  final String cateName;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'FoodResponse(foodId: $foodId, foodName: $foodName, images: $images, description: $description, price: $price, cateId: $cateId, cateName: $cateName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FoodResponse &&
            (identical(other.foodId, foodId) ||
                const DeepCollectionEquality().equals(other.foodId, foodId)) &&
            (identical(other.foodName, foodName) ||
                const DeepCollectionEquality()
                    .equals(other.foodName, foodName)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.cateId, cateId) ||
                const DeepCollectionEquality().equals(other.cateId, cateId)) &&
            (identical(other.cateName, cateName) ||
                const DeepCollectionEquality()
                    .equals(other.cateName, cateName)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(foodId) ^
      const DeepCollectionEquality().hash(foodName) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(cateId) ^
      const DeepCollectionEquality().hash(cateName) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$FoodResponseCopyWith<_FoodResponse> get copyWith =>
      __$FoodResponseCopyWithImpl<_FoodResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FoodResponseToJson(this);
  }
}

abstract class _FoodResponse implements FoodResponse {
  const factory _FoodResponse(
      {required String foodId,
      required String foodName,
      required List<ImageResponse> images,
      required String description,
      required int price,
      required String cateId,
      required String cateName,
      required String createdAt,
      required String updatedAt}) = _$_FoodResponse;

  factory _FoodResponse.fromJson(Map<String, dynamic> json) =
      _$_FoodResponse.fromJson;

  @override
  String get foodId => throw _privateConstructorUsedError;
  @override
  String get foodName => throw _privateConstructorUsedError;
  @override
  List<ImageResponse> get images => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String get cateId => throw _privateConstructorUsedError;
  @override
  String get cateName => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FoodResponseCopyWith<_FoodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) {
  return _ImageResponse.fromJson(json);
}

/// @nodoc
class _$ImageResponseTearOff {
  const _$ImageResponseTearOff();

  _ImageResponse call({required String imageUrl}) {
    return _ImageResponse(
      imageUrl: imageUrl,
    );
  }

  ImageResponse fromJson(Map<String, Object> json) {
    return ImageResponse.fromJson(json);
  }
}

/// @nodoc
const $ImageResponse = _$ImageResponseTearOff();

/// @nodoc
mixin _$ImageResponse {
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageResponseCopyWith<ImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageResponseCopyWith<$Res> {
  factory $ImageResponseCopyWith(
          ImageResponse value, $Res Function(ImageResponse) then) =
      _$ImageResponseCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class _$ImageResponseCopyWithImpl<$Res>
    implements $ImageResponseCopyWith<$Res> {
  _$ImageResponseCopyWithImpl(this._value, this._then);

  final ImageResponse _value;
  // ignore: unused_field
  final $Res Function(ImageResponse) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageResponseCopyWith<$Res>
    implements $ImageResponseCopyWith<$Res> {
  factory _$ImageResponseCopyWith(
          _ImageResponse value, $Res Function(_ImageResponse) then) =
      __$ImageResponseCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl});
}

/// @nodoc
class __$ImageResponseCopyWithImpl<$Res>
    extends _$ImageResponseCopyWithImpl<$Res>
    implements _$ImageResponseCopyWith<$Res> {
  __$ImageResponseCopyWithImpl(
      _ImageResponse _value, $Res Function(_ImageResponse) _then)
      : super(_value, (v) => _then(v as _ImageResponse));

  @override
  _ImageResponse get _value => super._value as _ImageResponse;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_ImageResponse(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageResponse implements _ImageResponse {
  const _$_ImageResponse({required this.imageUrl});

  factory _$_ImageResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageResponseFromJson(json);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ImageResponse(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageResponse &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$ImageResponseCopyWith<_ImageResponse> get copyWith =>
      __$ImageResponseCopyWithImpl<_ImageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageResponseToJson(this);
  }
}

abstract class _ImageResponse implements ImageResponse {
  const factory _ImageResponse({required String imageUrl}) = _$_ImageResponse;

  factory _ImageResponse.fromJson(Map<String, dynamic> json) =
      _$_ImageResponse.fromJson;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageResponseCopyWith<_ImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
