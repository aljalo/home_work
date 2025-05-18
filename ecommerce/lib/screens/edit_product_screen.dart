import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/product_cubit/product_cubit.dart';
import '../models/product_model.dart';

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
      const SnackBar(content: Text('تم تعديل المنتج بنجاح')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تعديل منتج')),
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
                onPressed: editProduct,
                child: const Text('Edit Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
