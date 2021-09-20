import 'package:food_delivery/data/api/json_parser/json_parser.dart';
import 'package:food_delivery/model/food/food.dart';

class FoodParser extends JsonParser<Food> with ObjectDecoder<Food> {
  const FoodParser();

  @override
  Future<Food> parseFromJson(String json) async {
    final decoded = decodeJsonObject(json);
    return Food.fromJson(decoded);
  }
}

class FoodsParser extends JsonParser<List<Food>> with ListDecoder<List<Food>> {
  const FoodsParser();

  @override
  Future<List<Food>> parseFromJson(String json) async {
    return decodeJsonList(json)
        .map((value) => Food.fromJson(value as Map<String, dynamic>))
        .toList();
  }
}
