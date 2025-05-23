
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  final ProductService productService;

  AddProductCubit(this.productService) : super(AddProductInitial());

  Future<void> addProduct(ProductModel product) async {
    try {
      emit(AddProductLoading());
      await productService.addProduct(product);
      emit(AddProductSuccess());
    } catch (e) {
      emit(AddProductError(e.toString()));
    }
  }
}