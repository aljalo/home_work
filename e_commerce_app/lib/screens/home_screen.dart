import 'package:e_commerce_app/cubit/add_product/add_product_cubit.dart';
import 'package:e_commerce_app/cubit/delete_product/delete_product_cubit.dart';
import 'package:e_commerce_app/cubit/fetch_products/fetch_products_cubit.dart';
import 'package:e_commerce_app/cubit/product_detail_cubit/product_detail_cubit.dart';
import 'package:e_commerce_app/cubit/update_product/update_product_cubit.dart';
import 'package:e_commerce_app/screens/edit_product_screen.dart';
import 'package:e_commerce_app/screens/product_detail_screen.dart'; // <<<--- CORRECTED THIS LINE
import 'package:e_commerce_app/widgets/delete_dialog.dart';
import 'package:e_commerce_app/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_app/services/product_service.dart';
import 'package:e_commerce_app/screens/add_product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => FetchProductsCubit(ProductService())..fetchProducts(),
        ),
        BlocProvider(create: (_) => ProductDetailCubit()),
        BlocProvider(create: (_) => AddProductCubit(ProductService())),
        BlocProvider(create: (_) => UpdateProductCubit(ProductService())),
        BlocProvider(create: (_) => DeleteProductCubit(ProductService())),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Store Products'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () =>
                  context.read<FetchProductsCubit>().fetchProducts(),
            ),
          ],
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<AddProductCubit, AddProductState>(
              listener: (context, state) {
                if (state is AddProductSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Product added successfully!'),
                    ),
                  );
                  context.read<FetchProductsCubit>().fetchProducts();
                } else if (state is AddProductError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error adding product: ${state.message}'),
                    ),
                  );
                }
              },
            ),
            BlocListener<UpdateProductCubit, UpdateProductState>(
              listener: (context, state) {
                if (state is UpdateProductSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Product updated successfully!'),
                    ),
                  );
                  context.read<FetchProductsCubit>().fetchProducts();
                } else if (state is UpdateProductError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error updating product: ${state.message}'),
                    ),
                  );
                }
              },
            ),
            BlocListener<DeleteProductCubit, DeleteProductState>(
              listener: (context, state) {
                if (state is DeleteProductSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Product deleted successfully!'),
                    ),
                  );
                  context.read<FetchProductsCubit>().fetchProducts();
                } else if (state is DeleteProductError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error deleting product: ${state.message}'),
                    ),
                  );
                }
              },
            ),
          ],
          child: BlocBuilder<FetchProductsCubit, FetchProductsState>(
            builder: (context, state) {
              if (state is FetchProductsLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is FetchProductsError) {
                return Center(child: Text('Error: ${state.message}'));
              } else if (state is FetchProductsLoaded) {
                return ProductGrid(
                  products: state.products,
                  onTap: (product) {
                    context.read<ProductDetailCubit>().showProductDetails(
                      product,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ProductDetailScreen(),
                      ),
                    );
                  },
                  onDelete: (product) {
                    showDeleteDialog(context, product, () {
                      context.read<DeleteProductCubit>().deleteProduct(
                        product.id,
                      );
                    });
                  },
                  onEdit: (product) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => EditProductScreen(product: product),
                      ),
                    );
                  },
                );
              }
              return const Center(
                child: Text('Press refresh to load products.'),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddProductScreen()),
          ),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
