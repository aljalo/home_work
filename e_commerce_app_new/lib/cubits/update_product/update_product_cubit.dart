import 'package:e_commerce_app_new/models/product_model.dart';
import 'package:e_commerce_app_new/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'update_product_state.dart';

class UpdateProductCubit extends Cubit<UpdateProductState> {
  final ProductService productService;

  UpdateProductCubit(this.productService) : super(const UpdateProductInitial());

  Future<void> updateExistingProduct({
    required int productId,
    required String title,
    required double price,
    required String description,
    required String imageUrl,
    required int categoryId, 
  }) async {
    emit(UpdateProductLoading(productId: productId));
    try {
      final updatedProduct = ProductModel(
        id: productId, 
        title: title,
        price: price,
        description: description,
        images: [imageUrl],
        category: Category(id: categoryId, name: 'Category $categoryId', image: 'https://via.placeholder.com/60'), 
      );

      final resultProduct = await productService.updateProduct(productId, updatedProduct);
      emit(UpdateProductSuccess(updatedProduct: resultProduct, message: 'Product updated successfully!'));
    } catch (e) {
      emit(UpdateProductError(message: 'Failed to update product: ${e.toString()}', failedProductId: productId));
    }
  }
}