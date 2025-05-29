import 'package:e_commerce_app_new/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'product_list_state.dart';

class ProductListCubit extends Cubit<ProductListState> {
  final ProductService productService;

  ProductListCubit(this.productService) : super(const ProductListInitial());

  Future<void> fetchProducts() async {
    emit(const ProductListLoading());
    try {
      final products = await productService.getProducts();
      emit(ProductListLoaded(products: products));
    } catch (e) {
      emit(ProductListError(message: 'Failed to load products: ${e.toString()}'));
    }
  }
}
