import 'package:e_commerce_app_new/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'delete_product_state.dart';

class DeleteProductCubit extends Cubit<DeleteProductState> {
  final ProductService productService;

  DeleteProductCubit(this.productService) : super(const DeleteProductInitial());

  Future<void> deleteProduct(int productId) async {
    emit(DeleteProductLoading(productId: productId));
    try {
      final bool success = await productService.deleteProduct(productId);
      if (success) {
        emit(DeleteProductSuccess(message: 'Product deleted successfully!', deletedProductId: productId));
      } else {
        emit(DeleteProductError(message: 'Failed to delete product.', failedProductId: productId));
      }
    } catch (e) {
      emit(DeleteProductError(message: 'An unexpected error occurred: ${e.toString()}', failedProductId: productId));
    }
  }
}