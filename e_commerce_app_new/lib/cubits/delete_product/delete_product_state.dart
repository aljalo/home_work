
abstract class DeleteProductState {
  const DeleteProductState();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is DeleteProductState && runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;
}

class DeleteProductInitial extends DeleteProductState {
  const DeleteProductInitial();
}

class DeleteProductLoading extends DeleteProductState {
  final int productId; // <--- أضف هذا السطر

  const DeleteProductLoading({required this.productId}); // <--- عدّل المُنشئ

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeleteProductLoading &&
          runtimeType == other.runtimeType &&
          productId == other.productId; // <--- أضف مقارنة الخاصية

  @override
  int get hashCode => productId.hashCode; // <--- عدّل الـ hashCode
}

class DeleteProductSuccess extends DeleteProductState {
  final String message;
  final int deletedProductId;

  const DeleteProductSuccess({required this.message, required this.deletedProductId});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeleteProductSuccess &&
          runtimeType == other.runtimeType &&
          message == other.message &&
          deletedProductId == other.deletedProductId;

  @override
  int get hashCode => Object.hash(message, deletedProductId);
}

class DeleteProductError extends DeleteProductState {
  final String message;
  final int failedProductId;

  const DeleteProductError({required this.message, required this.failedProductId});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeleteProductError &&
          runtimeType == other.runtimeType &&
          message == other.message &&
          failedProductId == other.failedProductId;

  @override
  int get hashCode => Object.hash(message, failedProductId);
}