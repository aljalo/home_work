import 'package:e_commerce_app_new/models/product_model.dart';
import 'package:e_commerce_app_new/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';



class ProductCard extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onDeletePressed;

  const ProductCard({
    super.key,
    required this.product,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () async {
        final result = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
        if (result == true) {

        }
      },
      child: Card(
        elevation: 2.0,
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: Hero( 
                      tag: 'productImage${product.id}', 
                      child: Image.network(
                        product.images.isNotEmpty && product.images[0].isNotEmpty
                            ? product.images[0]
                            : 'https://via.placeholder.com/150',
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 120,
                            color: Colors.grey[300],
                            child: const Center(
                              child: Icon(Icons.broken_image, size: 40, color: Colors.grey),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: onDeletePressed,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Text(
                product.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4.0),
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14.0,
                ),
              ),
              const Text(
                'change',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}