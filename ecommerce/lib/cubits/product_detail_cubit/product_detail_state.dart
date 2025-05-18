import 'package:equatable/equatable.dart';

import '../../models/product_model.dart';

abstract class ProductDetailState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProductDetailInitial extends ProductDetailState {}

class ProductDetailLoaded extends ProductDetailState {
  final ProductModel product;
  ProductDetailLoaded(this.product);

  @override
  List<Object?> get props => [product];
}