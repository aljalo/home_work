import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/product_detail_cubit/product_detail_cubit.dart';
import '../cubits/product_detail_cubit/product_detail_state.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("تفاصيل المنتج")),
      body: BlocBuilder<ProductDetailCubit, ProductDetailState>(
        builder: (context, state) {
          if (state is ProductDetailLoaded) {
            final product = state.product;

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    product.image,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Text("\$${product.price}", style: const TextStyle(fontSize: 18, color: Colors.green)),
                        const SizedBox(height: 16),
                        const Text("الوصف", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Text(product.description, style: const TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: Text("لا توجد تفاصيل للمنتج"));
          }
        },
      ),
    );
  }
}
