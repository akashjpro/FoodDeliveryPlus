import 'package:food_delivery/model/request/request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_product_in_cart_request.g.dart';

@JsonSerializable()
class GetProductInCartRequest extends Request {
  GetProductInCartRequest();
  @override
  Map<String, dynamic> toJson() => _$GetProductInCartRequestToJson(this);
}
