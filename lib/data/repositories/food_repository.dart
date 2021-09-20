import 'package:food_delivery/data/api/http_client.dart';
import 'package:food_delivery/data/api/json_parser/json_parser.dart';
import 'package:food_delivery/data/models/models.dart';

class FoodRepository {
  late Request _request;
  FoodRepository();

  Future<List<Food>> getAllFoods(String date, String limit) async {
    this._request = Request(endpoint: '/food/list/$date/$limit');
    return await this._request.executeGet<List<Food>>(FoodsParser());
  }
}
