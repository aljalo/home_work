import 'package:e_commerce_app_new/models/product_model.dart';

abstract class UpdateProductState {
  const UpdateProductState();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is UpdateProductState && runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;
}

class UpdateProductInitial extends UpdateProductState {
  const UpdateProductInitial();
}

class UpdateProductLoading extends UpdateProductState {
  final int productId; 
  const UpdateProductLoading({required this.productId});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateProductLoading &&
          runtimeType == other.runtimeType &&
          productId == other.productId;

  @override
  int get hashCode => productId.hashCode;
}

class UpdateProductSuccess extends UpdateProductState {
  final ProductModel updatedProduct;
  final String message;

  const UpdateProductSuccess({required this.updatedProduct, required this.message});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateProductSuccess &&
          runtimeType == other.runtimeType &&
          updatedProduct == other.updatedProduct &&
          message == other.message;

  @override
  int get hashCode => Object.hash(updatedProduct, message);
}

class UpdateProductError extends UpdateProductState {
  final String message;
  final int failedProductId; 

  const UpdateProductError({required this.message, required this.failedProductId});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateProductError &&
          runtimeType == other.runtimeType &&
          message == other.message &&
          failedProductId == other.failedProductId;

  @override
  int get hashCode => Object.hash(message, failedProductId);
}