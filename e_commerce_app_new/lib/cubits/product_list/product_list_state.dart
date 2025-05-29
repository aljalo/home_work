import 'package:e_commerce_app_new/models/product_model.dart';

abstract class ProductListState {
  const ProductListState();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ProductListState && runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;
}

class ProductListInitial extends ProductListState {
  const ProductListInitial();
}

class ProductListLoading extends ProductListState {
  const ProductListLoading();
}

class ProductListLoaded extends ProductListState {
  final List<ProductModel> products;

  const ProductListLoaded({required this.products});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductListLoaded &&
          runtimeType == other.runtimeType &&
          _listEquals(products, other.products);

  @override
  int get hashCode => Object.hashAll(products);

  static bool _listEquals(List<Object?> a, List<Object?> b) {
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}

class ProductListError extends ProductListState {
  final String message;

  const ProductListError({required this.message});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductListError &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => message.hashCode;
}
