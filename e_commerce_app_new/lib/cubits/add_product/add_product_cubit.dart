import 'package:e_commerce_app_new/models/product_model.dart';
import 'package:e_commerce_app_new/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  final ProductService productService;

  AddProductCubit(this.productService) : super(const AddProductInitial());

  Future<void> addNewProduct({
    required String title,
    required double price,
    required String description,
    required String imageUrl,
    required int categoryId, 
  }) async {
    emit(const AddProductLoading());
    try {
      final newProduct = ProductModel(
        id: 0,
        title: title,
        price: price,
        description: description,
        images: [imageUrl],
        category: Category(id: categoryId, name: 'Category $categoryId', image: 'https://via.placeholder.com/60'), 
      );

      final addedProduct = await productService.addProduct(newProduct); 
      emit(AddProductSuccess(product: addedProduct, message: 'Product added successfully!'));
    } catch (e) {
      emit(AddProductError(message: 'Failed to add product: ${e.toString()}'));
    }
  }
}