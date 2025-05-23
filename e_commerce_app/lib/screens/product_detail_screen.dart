import 'package:e_commerce_app/cubit/delete_product/delete_product_cubit.dart';
import 'package:e_commerce_app/cubit/product_detail_cubit/product_detail_cubit.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/screens/edit_product_screen.dart';
import 'package:e_commerce_app/widgets/delete_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  void goToEdit(BuildContext context, ProductModel product) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => EditProductScreen(product: product)));
  }

  void handleDelete(BuildContext context, ProductModel product) {
    showDeleteDialog(context, product, () {
      context.read<DeleteProductCubit>().deleteProduct(product.id);
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailCubit, ProductDetailState>(
      builder: (context, state) {
        if (state is ProductDetailLoaded) {
          final product = state.product;
          return Scaffold(
            appBar: AppBar(
              title: Text(
                product.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => goToEdit(context, product),
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => handleDelete(context, product),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    // Use a fallback placeholder if product.image is empty or invalid
                    product.image.isNotEmpty ? product.image : 'https://via.placeholder.com/600x400?text=No+Image',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      // Fallback to a placeholder image if the URL fails to load
                      return Image.network(
                        'https://via.placeholder.com/600x400?text=Image+Load+Error',
                        fit: BoxFit.cover,
                        height: 250,
                        width: double.infinity,
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                product.title,
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '\$${product.price}',
                              style: const TextStyle(fontSize: 18, color: Colors.green),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                            goToEdit(context, product);
                          },
                          child: const Text('change'),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Description",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          product.description,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Added ${product.title} to cart!')),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.blue[700],
                              foregroundColor: Colors.white,
                            ),
                            child: const Text(
                              'Add to Cart',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return const Center(child: Text("The product has no details"));
        }
      },
    );
  }
}