import 'package:e_commerce_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'product_card.dart';

class ProductGrid extends StatelessWidget {
  final List<ProductModel> products;
  final void Function(ProductModel) onTap;
  final void Function(ProductModel) onDelete;
  final void Function(ProductModel) onEdit;

  const ProductGrid({
    super.key,
    required this.products,
    required this.onTap,
    required this.onDelete,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductCard(
          product: product,
          onTap: () => onTap(product),
          onDelete: () => onDelete(product),
          onEdit: () => onEdit(product),
        );
      },
    );
  }
}
