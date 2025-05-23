import 'package:e_commerce_app/models/product_model.dart';
import 'package:flutter/material.dart';

Future<void> showDeleteDialog(BuildContext context, ProductModel product, VoidCallback onConfirm) {
  return showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('Delete Product'),
      content: Text('Are you sure you want to delete "${product.title}"?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            onConfirm();
            Navigator.pop(context);
          },
          child: const Text('Delete', style: TextStyle(color: Colors.red)),
        ),
      ],
    ),
  );
}
