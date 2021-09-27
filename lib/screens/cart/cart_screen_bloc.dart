import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/screens/cart/cart_screen_event.dart';
import 'package:food_delivery/helper/api_helper.dart';
import 'package:food_delivery/model/request/deleteProductInCart/delete_product_in_cart_request.dart';
import 'package:food_delivery/model/request/getProductInCart/get_product_in_cart_request.dart';
import 'package:food_delivery/model/request/updateCart/update_cart_request.dart';
import 'package:food_delivery/model/response/deleteProductInCart/delete_product_in_cart_response.dart'
    hide ProductInCart;
import 'package:food_delivery/model/response/getProductInCart/get_product_in_cart_response.dart';
import 'package:food_delivery/model/response/updateCart/update_cart_response.dart';
import 'package:food_delivery/states/cart_screen_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';

class CartScreenBloc extends Bloc<CartScreenEvent, CartScreenState> {
  final ApiHelper apiHelper;
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  CartScreenBloc({required this.apiHelper}) : super(CartScreenStateInitial());
  @override
  Stream<CartScreenState> mapEventToState(CartScreenEvent event) async* {
    // TODO: implement mapEventToState
    if (event is CartScreenEventRequested) {
      yield CartScreenStateLoading();
      try {
        var products = await _fetchData();
        yield CartScreenStateSuccess(items: products);
      } catch (e) {
        print(e);
        yield StateFailure(e: e.toString());
      }
    } else if (event is CartScreenEventDelete) {
      var total = await _deleteProduct(event.product);
      if (total.compareTo('OK') == 0) {
        var products = await _fetchData();
        yield CartScreenStateSuccess(items: products);
      } else
        yield StateFailure(e: total);
    } else if (event is CartScreenEventIncrement) {
      int counter = event.product.quantity;
      var status = await _updateProduct(event.product, counter + 1);
      if (status.compareTo('OK') == 0) {
        var products = await _fetchData();
        yield CartScreenStateSuccess(items: products);
      } else
        yield StateFailure(e: status);
    } else if (event is CartScreenEventDecrement &&
        event.product.quantity > 1) {
      int counter = event.product.quantity;
      var status = await _updateProduct(event.product, counter - 1);
      if (status.compareTo('OK') == 0) {
        var products = await _fetchData();
        yield CartScreenStateSuccess(items: products);
      } else
        yield StateFailure(e: status);
    }
  }

  Future<String> _deleteProduct(ProductInCart item) async {
    try {
      final SharedPreferences prefs = await _prefs;
      var total;
      var _token = prefs.getString(keyToken)!;
      var request = DeleteProductInCartRequest(item.foodId);
      var errorMessage;
      await apiHelper.requestAPI<DeleteProductInCartResponse>(
          request,
          apiHelper.client.deleteCart('Bearer ${_token.trim()}', request),
          ((response) => {total = response.total}),
          (error) => {
                errorMessage = error,
                print("errorMessage: $errorMessage"),
              });
      return 'OK';
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> _updateProduct(ProductInCart item, int counter) async {
    try {
      final SharedPreferences prefs = await _prefs;
      String status = '';
      var _token = prefs.getString(keyToken)!;
      var request = UpdateCartRequest(item.orderId, item.foodId, counter);
      var errorMessage;
      await apiHelper.requestAPI<UpdateCartResponse>(
          request,
          apiHelper.client.updateCart('Bearer ${_token.trim()}', request),
          ((response) => {status = response as String}),
          (error) => {
                errorMessage = error,
                print("errorMessage: $errorMessage"),
              });
      return status;
    } catch (e) {
      return e.toString();
    }
  }

  Future<List<ProductInCart>> _fetchData() async {
    List<ProductInCart> products = [];
    final SharedPreferences prefs = await _prefs;
    var _token = prefs.getString(keyToken)!;
    var request = GetProductInCartRequest();
    var errorMessage;
    await apiHelper.requestAPI<GetProductInCartResponse>(
        request,
        apiHelper.client.getProductInCart('Bearer ${_token.trim()}'),
        ((response) => {products = response.items}),
        (error) => {
              errorMessage = error,
              print("errorMessage: $errorMessage"),
            });
    return products;
  }
}
