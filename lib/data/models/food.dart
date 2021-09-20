import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'food.g.dart';

@JsonSerializable(nullable: false)
class Food extends Equatable {
  final String foodId;
  final String foodName;
  final List<dynamic> images;
  final String description;
  final int price;
  final String cateId;
  final String cateName;
  final DateTime createdAt;

  Food(
      {required this.foodId,
      required this.foodName,
      required this.images,
      required this.description,
      required this.price,
      required this.cateId,
      required this.cateName,
      required this.createdAt});

  @override
  List<Object?> get props => [
        foodId,
        foodName,
        images,
        description,
        price,
        cateId,
        cateName,
        createdAt
      ];

  Food copyWith({
    String? foodId,
    String? foodName,
    List<dynamic>? images,
    String? description,
    int? price,
    String? cateId,
    String? cateName,
    DateTime? createdAt,
  }) {
    return Food(
      foodId: foodId ?? this.foodId,
      foodName: foodName ?? this.foodName,
      images: images ?? this.images,
      description: description ?? this.description,
      price: price ?? this.price,
      cateId: cateId ?? this.cateId,
      cateName: cateName ?? this.cateName,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
  Map<String, dynamic> toJson() => _$FoodToJson(this);
}
