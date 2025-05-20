import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/services/product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductService productService;

  ProductCubit(this.productService) : super(ProductInitial());

  void fetchProducts() async {
    try {
      emit(ProductLoading());
      final products = await productService.getProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }

  void deleteProduct(int id) async {
    try {
      await productService.deleteProduct(id);
      fetchProducts();
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }

  void addProduct(ProductModel product) async {
    try {
      await productService.addProduct(product);
      fetchProducts();
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }

  void updateProduct(int id, ProductModel product) async {
    try {
      await productService.updateProduct(id, product);
      fetchProducts();
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}