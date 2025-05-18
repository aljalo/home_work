import 'package:flutter_bloc/flutter_bloc.dart';
import 'product_detail_state.dart';
import '../../models/product_model.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  ProductDetailCubit() : super(ProductDetailInitial());

  void showProductDetails(ProductModel product) {
    emit(ProductDetailLoaded(product));
  }
}