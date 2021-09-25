import 'package:food_delivery/model/request/request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_cart_request.g.dart';

@JsonSerializable()
class UpdateCartRequest extends Request {
  String orderId;
  String foodId;
  int quantity;
  UpdateCartRequest(this.orderId, this.foodId, this.quantity);
  @override
  Map<String, dynamic> toJson() => _$UpdateCartRequestToJson(this);
}
