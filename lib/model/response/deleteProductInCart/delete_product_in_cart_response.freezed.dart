// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_product_in_cart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteProductInCartResponse _$DeleteProductInCartResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteProductInCartResponse.fromJson(json);
}

/// @nodoc
class _$DeleteProductInCartResponseTearOff {
  const _$DeleteProductInCartResponseTearOff();

  _DeleteProductInCartResponse call(
      {required int total,
      required List<ProductInCart> items,
      required String createdAt,
      required String updatedAt}) {
    return _DeleteProductInCartResponse(
      total: total,
      items: items,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  DeleteProductInCartResponse fromJson(Map<String, Object> json) {
    return DeleteProductInCartResponse.fromJson(json);
  }
}

/// @nodoc
const $DeleteProductInCartResponse = _$DeleteProductInCartResponseTearOff();

/// @nodoc
mixin _$DeleteProductInCartResponse {
  int get total => throw _privateConstructorUsedError;
  List<ProductInCart> get items => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteProductInCartResponseCopyWith<DeleteProductInCartResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProductInCartResponseCopyWith<$Res> {
  factory $DeleteProductInCartResponseCopyWith(
          DeleteProductInCartResponse value,
          $Res Function(DeleteProductInCartResponse) then) =
      _$DeleteProductInCartResponseCopyWithImpl<$Res>;
  $Res call(
      {int total,
      List<ProductInCart> items,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$DeleteProductInCartResponseCopyWithImpl<$Res>
    implements $DeleteProductInCartResponseCopyWith<$Res> {
  _$DeleteProductInCartResponseCopyWithImpl(this._value, this._then);

  final DeleteProductInCartResponse _value;
  // ignore: unused_field
  final $Res Function(DeleteProductInCartResponse) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? items = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductInCart>,
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
abstract class _$DeleteProductInCartResponseCopyWith<$Res>
    implements $DeleteProductInCartResponseCopyWith<$Res> {
  factory _$DeleteProductInCartResponseCopyWith(
          _DeleteProductInCartResponse value,
          $Res Function(_DeleteProductInCartResponse) then) =
      __$DeleteProductInCartResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int total,
      List<ProductInCart> items,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$DeleteProductInCartResponseCopyWithImpl<$Res>
    extends _$DeleteProductInCartResponseCopyWithImpl<$Res>
    implements _$DeleteProductInCartResponseCopyWith<$Res> {
  __$DeleteProductInCartResponseCopyWithImpl(
      _DeleteProductInCartResponse _value,
      $Res Function(_DeleteProductInCartResponse) _then)
      : super(_value, (v) => _then(v as _DeleteProductInCartResponse));

  @override
  _DeleteProductInCartResponse get _value =>
      super._value as _DeleteProductInCartResponse;

  @override
  $Res call({
    Object? total = freezed,
    Object? items = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_DeleteProductInCartResponse(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductInCart>,
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
class _$_DeleteProductInCartResponse
    with DiagnosticableTreeMixin
    implements _DeleteProductInCartResponse {
  const _$_DeleteProductInCartResponse(
      {required this.total,
      required this.items,
      required this.createdAt,
      required this.updatedAt});

  factory _$_DeleteProductInCartResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteProductInCartResponseFromJson(json);

  @override
  final int total;
  @override
  final List<ProductInCart> items;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteProductInCartResponse(total: $total, items: $items, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteProductInCartResponse'))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteProductInCartResponse &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
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
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$DeleteProductInCartResponseCopyWith<_DeleteProductInCartResponse>
      get copyWith => __$DeleteProductInCartResponseCopyWithImpl<
          _DeleteProductInCartResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteProductInCartResponseToJson(this);
  }
}

abstract class _DeleteProductInCartResponse
    implements DeleteProductInCartResponse {
  const factory _DeleteProductInCartResponse(
      {required int total,
      required List<ProductInCart> items,
      required String createdAt,
      required String updatedAt}) = _$_DeleteProductInCartResponse;

  factory _DeleteProductInCartResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteProductInCartResponse.fromJson;

  @override
  int get total => throw _privateConstructorUsedError;
  @override
  List<ProductInCart> get items => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteProductInCartResponseCopyWith<_DeleteProductInCartResponse>
      get copyWith => throw _privateConstructorUsedError;
}

ProductInCart _$ProductInCartFromJson(Map<String, dynamic> json) {
  return _ProductInCart.fromJson(json);
}

/// @nodoc
class _$ProductInCartTearOff {
  const _$ProductInCartTearOff();

  _ProductInCart call(
      {required String orderId,
      required String foodId,
      required String foodName,
      required List<dynamic> images,
      required int quantity,
      required double price,
      required String createdAt,
      required String updatedAt}) {
    return _ProductInCart(
      orderId: orderId,
      foodId: foodId,
      foodName: foodName,
      images: images,
      quantity: quantity,
      price: price,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  ProductInCart fromJson(Map<String, Object> json) {
    return ProductInCart.fromJson(json);
  }
}

/// @nodoc
const $ProductInCart = _$ProductInCartTearOff();

/// @nodoc
mixin _$ProductInCart {
  String get orderId => throw _privateConstructorUsedError;
  String get foodId => throw _privateConstructorUsedError;
  String get foodName => throw _privateConstructorUsedError;
  List<dynamic> get images => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductInCartCopyWith<ProductInCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInCartCopyWith<$Res> {
  factory $ProductInCartCopyWith(
          ProductInCart value, $Res Function(ProductInCart) then) =
      _$ProductInCartCopyWithImpl<$Res>;
  $Res call(
      {String orderId,
      String foodId,
      String foodName,
      List<dynamic> images,
      int quantity,
      double price,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$ProductInCartCopyWithImpl<$Res>
    implements $ProductInCartCopyWith<$Res> {
  _$ProductInCartCopyWithImpl(this._value, this._then);

  final ProductInCart _value;
  // ignore: unused_field
  final $Res Function(ProductInCart) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? foodId = freezed,
    Object? foodName = freezed,
    Object? images = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<dynamic>,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$ProductInCartCopyWith<$Res>
    implements $ProductInCartCopyWith<$Res> {
  factory _$ProductInCartCopyWith(
          _ProductInCart value, $Res Function(_ProductInCart) then) =
      __$ProductInCartCopyWithImpl<$Res>;
  @override
  $Res call(
      {String orderId,
      String foodId,
      String foodName,
      List<dynamic> images,
      int quantity,
      double price,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$ProductInCartCopyWithImpl<$Res>
    extends _$ProductInCartCopyWithImpl<$Res>
    implements _$ProductInCartCopyWith<$Res> {
  __$ProductInCartCopyWithImpl(
      _ProductInCart _value, $Res Function(_ProductInCart) _then)
      : super(_value, (v) => _then(v as _ProductInCart));

  @override
  _ProductInCart get _value => super._value as _ProductInCart;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? foodId = freezed,
    Object? foodName = freezed,
    Object? images = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ProductInCart(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<dynamic>,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$_ProductInCart with DiagnosticableTreeMixin implements _ProductInCart {
  const _$_ProductInCart(
      {required this.orderId,
      required this.foodId,
      required this.foodName,
      required this.images,
      required this.quantity,
      required this.price,
      required this.createdAt,
      required this.updatedAt});

  factory _$_ProductInCart.fromJson(Map<String, dynamic> json) =>
      _$$_ProductInCartFromJson(json);

  @override
  final String orderId;
  @override
  final String foodId;
  @override
  final String foodName;
  @override
  final List<dynamic> images;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductInCart(orderId: $orderId, foodId: $foodId, foodName: $foodName, images: $images, quantity: $quantity, price: $price, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductInCart'))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('foodId', foodId))
      ..add(DiagnosticsProperty('foodName', foodName))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductInCart &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.foodId, foodId) ||
                const DeepCollectionEquality().equals(other.foodId, foodId)) &&
            (identical(other.foodName, foodName) ||
                const DeepCollectionEquality()
                    .equals(other.foodName, foodName)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
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
      const DeepCollectionEquality().hash(foodId) ^
      const DeepCollectionEquality().hash(foodName) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$ProductInCartCopyWith<_ProductInCart> get copyWith =>
      __$ProductInCartCopyWithImpl<_ProductInCart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductInCartToJson(this);
  }
}

abstract class _ProductInCart implements ProductInCart {
  const factory _ProductInCart(
      {required String orderId,
      required String foodId,
      required String foodName,
      required List<dynamic> images,
      required int quantity,
      required double price,
      required String createdAt,
      required String updatedAt}) = _$_ProductInCart;

  factory _ProductInCart.fromJson(Map<String, dynamic> json) =
      _$_ProductInCart.fromJson;

  @override
  String get orderId => throw _privateConstructorUsedError;
  @override
  String get foodId => throw _privateConstructorUsedError;
  @override
  String get foodName => throw _privateConstructorUsedError;
  @override
  List<dynamic> get images => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductInCartCopyWith<_ProductInCart> get copyWith =>
      throw _privateConstructorUsedError;
}
