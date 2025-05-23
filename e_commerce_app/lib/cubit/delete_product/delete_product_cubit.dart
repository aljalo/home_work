import 'package:e_commerce_app/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'delete_product_state.dart';

class DeleteProductCubit extends Cubit<DeleteProductState> {
  final ProductService productService;

  DeleteProductCubit(this.productService) : super(DeleteProductInitial());

  Future<void> deleteProduct(int id) async {
    try {
      emit(DeleteProductLoading());
      await productService.deleteProduct(id);
      emit(DeleteProductSuccess());
    } catch (e) {
      // CORRECT: Now the constructor expects a String, so e.toString() is valid.
      emit(DeleteProductError(e.toString()));
    }
  }
}