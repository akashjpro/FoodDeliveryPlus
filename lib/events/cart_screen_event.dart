import 'package:equatable/equatable.dart';
import 'package:food_delivery/model/response/getProductInCart/get_product_in_cart_response.dart';

abstract class CartScreenEvent extends Equatable {
  const CartScreenEvent();
}

class CartScreenEventRequested extends CartScreenEvent {
  const CartScreenEventRequested();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class CartScreenEventUpdate extends CartScreenEvent {
  final String orderId;
  final String foodId;
  final int quantity;
  CartScreenEventUpdate(
      {required this.orderId, required this.foodId, required this.quantity});
  @override
  // TODO: implement props
  List<Object?> get props => [orderId, foodId, quantity];
}

class CartScreenEventDelete extends CartScreenEvent {
  final ProductInCart product;
  CartScreenEventDelete({required this.product});
  @override
  // TODO: implement props
  List<Object?> get props => [product];
}

class CartScreenEventIncrement extends CartScreenEvent {
  final ProductInCart product;
  CartScreenEventIncrement({required this.product});
  @override
  // TODO: implement props
  List<Object?> get props => [product];
}

class CartScreenEventDecrement extends CartScreenEvent {
  final ProductInCart product;
  CartScreenEventDecrement({required this.product});
  @override
  // TODO: implement props
  List<Object?> get props => [product];
}
