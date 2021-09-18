class FoodModel {
  final String foodId;
  final String foodName;
  final List<Images> images;
  final String description;
  final int price;
  final String cateId;
  final String cateName;
  final String createdAt;
  final String updatedAt;

  FoodModel({
    required this.foodId,
    required this.foodName,
    required this.images,
    required this.description,
    required this.price,
    required this.cateId,
    required this.cateName,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'foodId': foodId,
      'foodName': foodName,
      'images': images,
      'description': description,
      'price': price,
      'cateId': cateId,
      'cateName': cateName,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };

    return map;
  }

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    print((json['images'] as List));
    return FoodModel(
      foodId: json['foodId'],
      foodName: json['foodName'],
      images: (json['images'] as List)
          .map((imagesUrl) => new Images.fromJson(imagesUrl))
          .toList(),
      description: json['description'],
      price: json['price'],
      cateId: json['cateId'],
      cateName: json['cateName'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

class Images {
  late String imageUrl;

  Images({
    required this.imageUrl,
  });

  Images.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
  }
}
