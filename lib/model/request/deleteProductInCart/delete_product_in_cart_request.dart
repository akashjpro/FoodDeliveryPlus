import 'package:food_delivery/model/request/request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_product_in_cart_request.g.dart';

@JsonSerializable()
class DeleteProductInCartRequest extends Request {
  String foodId;
  DeleteProductInCartRequest(this.foodId);
  @override
  Map<String, dynamic> toJson() => _$DeleteProductInCartRequestToJson(this);
}
