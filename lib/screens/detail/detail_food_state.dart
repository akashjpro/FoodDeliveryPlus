import 'package:equatable/equatable.dart';
 
abstract class DetailFoodState extends Equatable {
  const DetailFoodState();
  @override
  List<Object> get props => [];
}

class DetailFoodInitial extends DetailFoodState {}

class DetailFoodLoading extends DetailFoodState {}

class DetailFoodSuccess extends DetailFoodState {}

class DetailFoodFailed extends DetailFoodState {
  final String error;

  DetailFoodFailed({required this.error});

  @override
  List<Object> get props => [error];
}
