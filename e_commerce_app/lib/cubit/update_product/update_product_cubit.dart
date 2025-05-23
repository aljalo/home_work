import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'update_product_state.dart';

class UpdateProductCubit extends Cubit<UpdateProductState> {
  final ProductService productService;

  UpdateProductCubit(this.productService) : super(UpdateProductInitial());

  Future<void> updateProduct(int id, ProductModel product) async {
    try {
      emit(UpdateProductLoading());
      await productService.updateProduct(id, product);
      emit(UpdateProductSuccess());
    } catch (e) {
      emit(UpdateProductError(e.toString()));
    }
  }
}