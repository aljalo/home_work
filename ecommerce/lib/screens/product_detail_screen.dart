import 'package:ecommerce/cubits/product_detail_cubit/product_detail_cubit.dart';
import 'package:ecommerce/cubits/product_detail_cubit/product_detail_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Product Details")),
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
                    padding:  EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.title, style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                         SizedBox(height: 8),
                        Text("\$${product.price}", style:  TextStyle(fontSize: 18, color: Colors.green)),
                         SizedBox(height: 16),
                         Text("Description", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                         SizedBox(height: 8),
                        Text(product.description, style:  TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return  Center(child: Text("The product no have details"));
          }
        },
      ),
    );
  }
}
