import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'fetch_products_state.dart';

class FetchProductsCubit extends Cubit<FetchProductsState> {
  final ProductService productService;

  FetchProductsCubit(this.productService) : super(FetchProductsInitial());

  Future<void> fetchProducts() async {
    try {
      emit(FetchProductsLoading());
      final products = await productService.getProducts();
      emit(FetchProductsLoaded(products));
    } catch (e) {
      emit(FetchProductsError(e.toString()));
    }
  }
}