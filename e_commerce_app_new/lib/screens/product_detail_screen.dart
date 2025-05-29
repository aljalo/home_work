import 'package:e_commerce_app_new/cubits/delete_product/delete_product_cubit.dart';
import 'package:e_commerce_app_new/cubits/delete_product/delete_product_state.dart';
import 'package:e_commerce_app_new/models/product_model.dart';
import 'package:e_commerce_app_new/services/product_service.dart';
import 'package:e_commerce_app_new/widgets/delete_confirmation_dialog.dart';
import 'package:e_commerce_app_new/widgets/product_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_product_screen.dart'; 

class ProductDetailScreen extends StatelessWidget {
  final ProductModel product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeleteProductCubit(ProductService()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(product.title),
          actions: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () async {
                final bool? result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProductScreen(product: product),
                  ),
                );
                if (result == true) {
                  Navigator.of(context).pop(true);
                }
              },
            ),
            BlocListener<DeleteProductCubit, DeleteProductState>(
              listener: (context, deleteState) {
                if (deleteState is DeleteProductSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(deleteState.message)),
                  );
                  Navigator.of(context).pop(true);
                } else if (deleteState is DeleteProductError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(deleteState.message)),
                  );
                }
              },
              child: BlocBuilder<DeleteProductCubit, DeleteProductState>(
                builder: (context, deleteState) {
                  final bool isDeleting = deleteState is DeleteProductLoading && deleteState.productId == product.id;
                  return IconButton(
                    icon: isDeleting
                        ? const SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2,
                            ),
                          )
                        : const Icon(Icons.delete),
                    onPressed: isDeleting
                        ? null
                        : () {
                            showDialog(
                              context: context,
                              builder: (BuildContext dialogContext) {
                                return DeleteConfirmationDialog(
                                  productName: product.title,
                                  onConfirm: () {
                                    BlocProvider.of<DeleteProductCubit>(context)
                                        .deleteProduct(product.id);
                                  },
                                );
                              },
                            );
                          },
                  );
                },
              ),
            ),
          ],
        ),
        body: ProductDetailsBody(product: product),
      ),
    );
  }
}

