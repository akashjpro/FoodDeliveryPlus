// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_to_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataAddToCart _$DataAddToCartFromJson(Map<String, dynamic> json) {
  return _DataAddToCart.fromJson(json);
}

/// @nodoc
class _$DataAddToCartTearOff {
  const _$DataAddToCartTearOff();

  _DataAddToCart call(
      {required String orderId,
      required int total,
      required String createdAt,
      required String updatedAt}) {
    return _DataAddToCart(
      orderId: orderId,
      total: total,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  DataAddToCart fromJson(Map<String, Object> json) {
    return DataAddToCart.fromJson(json);
  }
}

/// @nodoc
const $DataAddToCart = _$DataAddToCartTearOff();

/// @nodoc
mixin _$DataAddToCart {
  String get orderId => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataAddToCartCopyWith<DataAddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAddToCartCopyWith<$Res> {
  factory $DataAddToCartCopyWith(
          DataAddToCart value, $Res Function(DataAddToCart) then) =
      _$DataAddToCartCopyWithImpl<$Res>;
  $Res call({String orderId, int total, String createdAt, String updatedAt});
}

/// @nodoc
class _$DataAddToCartCopyWithImpl<$Res>
    implements $DataAddToCartCopyWith<$Res> {
  _$DataAddToCartCopyWithImpl(this._value, this._then);

  final DataAddToCart _value;
  // ignore: unused_field
  final $Res Function(DataAddToCart) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? total = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$DataAddToCartCopyWith<$Res>
    implements $DataAddToCartCopyWith<$Res> {
  factory _$DataAddToCartCopyWith(
          _DataAddToCart value, $Res Function(_DataAddToCart) then) =
      __$DataAddToCartCopyWithImpl<$Res>;
  @override
  $Res call({String orderId, int total, String createdAt, String updatedAt});
}

/// @nodoc
class __$DataAddToCartCopyWithImpl<$Res>
    extends _$DataAddToCartCopyWithImpl<$Res>
    implements _$DataAddToCartCopyWith<$Res> {
  __$DataAddToCartCopyWithImpl(
      _DataAddToCart _value, $Res Function(_DataAddToCart) _then)
      : super(_value, (v) => _then(v as _DataAddToCart));

  @override
  _DataAddToCart get _value => super._value as _DataAddToCart;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? total = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_DataAddToCart(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_DataAddToCart implements _DataAddToCart {
  const _$_DataAddToCart(
      {required this.orderId,
      required this.total,
      required this.createdAt,
      required this.updatedAt});

  factory _$_DataAddToCart.fromJson(Map<String, dynamic> json) =>
      _$_$_DataAddToCartFromJson(json);

  @override
  final String orderId;
  @override
  final int total;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'DataAddToCart(orderId: $orderId, total: $total, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataAddToCart &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
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
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$DataAddToCartCopyWith<_DataAddToCart> get copyWith =>
      __$DataAddToCartCopyWithImpl<_DataAddToCart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DataAddToCartToJson(this);
  }
}

abstract class _DataAddToCart implements DataAddToCart {
  const factory _DataAddToCart(
      {required String orderId,
      required int total,
      required String createdAt,
      required String updatedAt}) = _$_DataAddToCart;

  factory _DataAddToCart.fromJson(Map<String, dynamic> json) =
      _$_DataAddToCart.fromJson;

  @override
  String get orderId => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataAddToCartCopyWith<_DataAddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}
