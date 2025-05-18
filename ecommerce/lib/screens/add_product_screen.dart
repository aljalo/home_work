import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/product_cubit/product_cubit.dart';
import '../models/product_model.dart';

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
      const SnackBar(content: Text('تمت إضافة المنتج بنجاح')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إضافة منتج')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: titleController, decoration: const InputDecoration(labelText: 'الاسم')),
              const SizedBox(height: 10),
              TextField(controller: priceController, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'السعر')),
              const SizedBox(height: 10),
              TextField(controller: descriptionController, decoration: const InputDecoration(labelText: 'الوصف')),
              const SizedBox(height: 10),
              TextField(controller: imageController, decoration: const InputDecoration(labelText: 'رابط الصورة')),
              const SizedBox(height: 10),
              TextField(controller: categoryController, decoration: const InputDecoration(labelText: 'التصنيف')),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: addProduct,
                child: const Text('Add Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
