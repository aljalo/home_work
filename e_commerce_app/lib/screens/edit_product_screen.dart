import 'package:e_commerce_app/cubit/update_product/update_product_cubit.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/widgets/custom_text_field.dart';
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
    priceController = TextEditingController(
      text: widget.product.price.toString(),
    );
    descriptionController = TextEditingController(
      text: widget.product.description,
    );
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
      category: categoryController.text, // Maps to categoryId in service
    );
    context.read<UpdateProductCubit>().updateProduct(
      widget.product.id,
      updatedProduct,
    ); // Call new UpdateProductCubit
    Navigator.pop(
      context,
    ); // Pop immediately, Home screen listener will show success/error
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Product')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(controller: titleController, labelText: 'Title'),
              CustomTextField(
                controller: priceController,
                labelText: 'Price',
                keyboardType: TextInputType.number,
              ),
              CustomTextField(
                controller: descriptionController,
                labelText: 'Description',
              ),
              CustomTextField(
                controller: imageController,
                labelText: 'Image URL',
              ),
              CustomTextField(
                controller: categoryController,
                labelText: 'Category',
              ),
              const SizedBox(height: 20),
              // Optional: You can use a BlocListener here to show loading state
              BlocBuilder<UpdateProductCubit, UpdateProductState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: state is UpdateProductLoading
                        ? null
                        : editProduct, // Disable button while loading
                    child: state is UpdateProductLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text('Edit Product'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
