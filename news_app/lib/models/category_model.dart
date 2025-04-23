class CategoryModel {
  final String image;
  final String categoryName;

  const CategoryModel({required this.image, required this.categoryName});


  factory CategoryModel.fromJson(json) {
    return CategoryModel(
      image: json['urlToImage'],
      categoryName: json['title'],
      
    );
  }
}
