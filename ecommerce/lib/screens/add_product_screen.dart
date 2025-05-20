import 'package:ecommerce/cubits/product_cubit/product_cubit.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();

  void addProduct() {
    final product = ProductModel(
      id: 0,
      title: titleController.text,
      price: num.tryParse(priceController.text) ?? 0,
      description: descriptionController.text,
      image: imageController.text,
      category: categoryController.text,
    );

    context.read<ProductCubit>().addProduct(product);
    Navigator.pop(context);

    ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text('Product added successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: titleController, decoration: InputDecoration(labelText: 'Title')),
               SizedBox(height: 10),
              TextField(controller: priceController, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Price')),
               SizedBox(height: 10),
              TextField(controller: descriptionController, decoration:  InputDecoration(labelText: 'Description')),
               SizedBox(height: 10),
              TextField(controller: imageController, decoration:  InputDecoration(labelText: 'Image URL')),
               SizedBox(height: 10),
              TextField(controller: categoryController, decoration:  InputDecoration(labelText: 'Category')),
               SizedBox(height: 20),
              ElevatedButton(
                onPressed: addProduct,
                child:  Text('Add Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
