import 'package:e_commerce_app_new/cubits/delete_product/delete_product_cubit.dart';
import 'package:e_commerce_app_new/cubits/delete_product/delete_product_state.dart';
import 'package:e_commerce_app_new/cubits/product_list/product_list_cubit.dart';
import 'package:e_commerce_app_new/cubits/product_list/product_list_state.dart';
import 'package:e_commerce_app_new/services/product_service.dart';
import 'package:e_commerce_app_new/widgets/delete_confirmation_dialog.dart';
import 'package:e_commerce_app_new/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'add_product_screen.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductListCubit(ProductService())..fetchProducts(),
        ),
        BlocProvider(
          create: (context) => DeleteProductCubit(ProductService()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('E-Commerce App'),
          actions: [
            Builder(
              builder: (innerContext) { 
                return IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    BlocProvider.of<ProductListCubit>(innerContext).fetchProducts();
                  },
                );
              },
            ),
          ],
        ),
        body: BlocConsumer<DeleteProductCubit, DeleteProductState>(
          listener: (context, deleteState) {
            if (deleteState is DeleteProductSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(deleteState.message)),
              );
              BlocProvider.of<ProductListCubit>(context).fetchProducts();
            } else if (deleteState is DeleteProductError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(deleteState.message)),
              );
            }
          },
          builder: (context, deleteState) {
            return BlocBuilder<ProductListCubit, ProductListState>(
              builder: (context, productListState) {
                if (productListState is ProductListLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (productListState is ProductListLoaded) {
                  if (productListState.products.isEmpty) {
                    return const Center(child: Text('No products available.'));
                  }
                  return GridView.builder(
                    padding: const EdgeInsets.all(8.0),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: productListState.products.length,
                    itemBuilder: (context, index) {
                      final product = productListState.products[index];
                      final bool isDeletingThisProduct =
                          deleteState is DeleteProductLoading && deleteState.productId == product.id;

                      return Stack(
                        children: [
                          ProductCard(
                            product: product,
                            onDeletePressed: isDeletingThisProduct
                                ? () {}
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
                          ),
                          if (isDeletingThisProduct)
                            const Positioned.fill(
                              child: ColoredBox(
                                color: Colors.black54,
                                child: Center(
                                  child: CircularProgressIndicator(color: Colors.white),
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  );
                } else if (productListState is ProductListError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Error: ${productListState.message}'),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<ProductListCubit>(context).fetchProducts();
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                }
                return const Center(child: Text('Unexpected state.'));
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final bool? result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddProductScreen()),
            );
            if (result == true) {
              BlocProvider.of<ProductListCubit>(context).fetchProducts();
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}