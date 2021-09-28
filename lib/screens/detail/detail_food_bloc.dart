import 'package:bloc/bloc.dart';
import 'package:food_delivery/helper/api_helper.dart';
import 'package:food_delivery/model/request/detailFood/food_request.dart';
import 'package:food_delivery/model/response/addToCart/add_to_cart.dart';
import 'package:food_delivery/screens/detail/detail_food_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'detail_food_event.dart';

class DetailFoodBloc extends Bloc<DetailFoodEvent, DetailFoodState> {
  final ApiHelper apiHelper;

  DetailFoodBloc({required this.apiHelper}) : super(DetailFoodInitial());

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Stream<DetailFoodState> mapEventToState(DetailFoodEvent event) async* {
    if (event is addToCart) {
      print(event.foodId);
      var result = await _addToCart(event.foodId);
      print('result: ' + result);
      // if(result != null) {
      //   yield 
      // }
    }
  }

  Future<String> _addToCart(String fooId) async {
    try {
      late String orderId ;
      final SharedPreferences prefs = await _prefs;
      var token = prefs.getString('token')!;
      print('token: ' + token);
      print('fooId: ' + fooId);
      var request = FoodRequest(foodId: fooId);
      await apiHelper.requestAPI<DataAddToCart>(
          request,
          apiHelper.client.AddToCart('Bearer ${token.trim()}', request),
          ((response) => {orderId = response.orderId}),
          (error) => {
                print("errorMessage: $error"),
              });
      //print('code $code');
      print('orderId: ' + orderId.toString());
      return orderId;
    } catch (e) {
      print("E : " + e.toString());
      return e.toString();
    }
  }
}
