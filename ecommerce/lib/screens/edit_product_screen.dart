import 'package:ecommerce/cubits/product_cubit/product_cubit.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class EditProductScreen extends StatefulWidget {
  final ProductModel product;
  const EditProductScreen({super.key, required this.product});

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  late TextEditingController titleController;
  late TextEditingController priceController;
  late TextEditingController descriptionController;
  late TextEditingController imageController;
  late TextEditingController categoryController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.product.title);
    priceController = TextEditingController(text: widget.product.price.toString());
    descriptionController = TextEditingController(text: widget.product.description);
    imageController = TextEditingController(text: widget.product.image);
    categoryController = TextEditingController(text: widget.product.category);
  }

  void editProduct() {
    final updatedProduct = ProductModel(
      id: widget.product.id,
      title: titleController.text,
      price: num.tryParse(priceController.text) ?? widget.product.price,
      description: descriptionController.text,
      image: imageController.text,
      category: categoryController.text,
    );

    context.read<ProductCubit>().updateProduct(widget.product.id, updatedProduct);
    Navigator.pop(context);

    ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text('Product updated successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Product')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: titleController, decoration:  InputDecoration(labelText: 'Title')),
               SizedBox(height: 10),
              TextField(controller: priceController, keyboardType: TextInputType.number, decoration:  InputDecoration(labelText: 'Price')),
               SizedBox(height: 10),
              TextField(controller: descriptionController, decoration:  InputDecoration(labelText: 'Description')),
               SizedBox(height: 10),
              TextField(controller: imageController, decoration:  InputDecoration(labelText: 'Image URL')),
               SizedBox(height: 10),
              TextField(controller: categoryController, decoration:  InputDecoration(labelText: 'Category')),
               SizedBox(height: 20),
              ElevatedButton(
                onPressed: editProduct,
                child:  Text('Edit Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
