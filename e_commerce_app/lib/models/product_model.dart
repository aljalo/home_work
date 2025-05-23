
class ProductModel {
  final int id;
  final String title;
  final String description;
  final num price;
  final String image;
  final String category;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      image: json['images'][0],
      category: json['category']['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'price': price,
      'images': [image],
      'categoryId': 1,
    };
  }
}
