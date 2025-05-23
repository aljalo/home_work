part of 'fetch_products_cubit.dart';

abstract class FetchProductsState {}

class FetchProductsInitial extends FetchProductsState {}

class FetchProductsLoading extends FetchProductsState {}

class FetchProductsLoaded extends FetchProductsState {
  final List<ProductModel> products;
  FetchProductsLoaded(this.products);
}

class FetchProductsError extends FetchProductsState {
  final String message;
  FetchProductsError(this.message);
}