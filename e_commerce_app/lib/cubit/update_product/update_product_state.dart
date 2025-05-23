part of 'update_product_cubit.dart';

abstract class UpdateProductState {}

class UpdateProductInitial extends UpdateProductState {}

class UpdateProductLoading extends UpdateProductState {}

class UpdateProductSuccess extends UpdateProductState {}

class UpdateProductError extends UpdateProductState {
  final String message;
  UpdateProductError(this.message);
}