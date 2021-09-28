import 'package:food_delivery/model/request/request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_request.g.dart';

@JsonSerializable()
class FoodRequest extends Request {
  String foodId;

  FoodRequest({required this.foodId});

  @override
  Map<String, dynamic> toJson() => _$FoodRequestToJson(this);
}
