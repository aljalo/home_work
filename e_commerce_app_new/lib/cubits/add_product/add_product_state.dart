import 'package:e_commerce_app_new/models/product_model.dart';

abstract class AddProductState {
  const AddProductState();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AddProductState && runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;
}

class AddProductInitial extends AddProductState {
  const AddProductInitial();
}

class AddProductLoading extends AddProductState {
  const AddProductLoading();
}

class AddProductSuccess extends AddProductState {
  final ProductModel product;
  final String message;

  const AddProductSuccess({required this.product, required this.message});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddProductSuccess &&
          runtimeType == other.runtimeType &&
          product == other.product &&
          message == other.message; 

  @override
  int get hashCode => Object.hash(product, message);
}

class AddProductError extends AddProductState {
  final String message;

  const AddProductError({required this.message});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddProductError &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => message.hashCode;
}