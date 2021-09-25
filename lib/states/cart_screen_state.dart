import 'package:equatable/equatable.dart';
import 'package:food_delivery/model/response/getProductInCart/get_product_in_cart_response.dart';

abstract class CartScreenState extends Equatable {
  const CartScreenState();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class CartScreenStateInitial extends CartScreenState {}

class CartScreenStateLoading extends CartScreenState {}

class CartScreenStateSuccess extends CartScreenState {
  final List<ProductInCart> items;
  const CartScreenStateSuccess({required this.items});
  List<Object> get props => [items];
}

class CartScreenStateUpdate extends CartScreenState {
  final String status;
  const CartScreenStateUpdate({required this.status});
  // TODO: implement props
  List<Object> get props => [];
}

class CounterState extends CartScreenState {
  final int counter;
  const CounterState({required this.counter});
  @override
  List<Object> get props => [counter];
}

class StateFailure extends CartScreenState {
  final String e;
  const StateFailure({required this.e});
  @override
  // TODO: implement props
  List<Object> get props => [e];
}
