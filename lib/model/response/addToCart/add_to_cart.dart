import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart.freezed.dart';

part 'add_to_cart.g.dart';

// @freezed
// class ResponseAddToCart with _$ResponseAddToCart {
//   const factory ResponseAddToCart({
//     required int code,
//     required DataAddToCart data,
//   }) = _ResponseAddToCart;

//   factory ResponseAddToCart.fromJson(Object? json) =>
//       _$ResponseAddToCartFromJson(json as Map<String, dynamic>);

// }

@freezed
class DataAddToCart with _$DataAddToCart {
  const factory DataAddToCart({
    required String orderId,
    required int total,
    required String createdAt,
    required String updatedAt,
  }) = _DataAddToCart;

  factory DataAddToCart.fromJson(Object? json) =>
      _$DataAddToCartFromJson(json as Map<String, dynamic>);
}
