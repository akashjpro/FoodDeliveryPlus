import 'package:equatable/equatable.dart';

abstract class DetailFoodEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class addToCart extends DetailFoodEvent {
  String foodId;

  addToCart({required this.foodId});

  @override
  List<Object> get props => [foodId];
}

