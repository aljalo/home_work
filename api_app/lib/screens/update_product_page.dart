import 'package:api_app/models/product_model.dart';
import 'package:api_app/services/update_product_service.dart';
import 'package:api_app/widgets/custom_button.dart';
import 'package:api_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductPage extends StatefulWidget {
 const UpdateProductPage({super.key});

  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName;
  String? description;
  String? image;
  String? price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(title: Text('Update Product'), centerTitle: true),

        body: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                CustomTextField(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: 'Product Name',
                ),
                SizedBox(height: 10),
                CustomTextField(
                  onChanged: (data) {
                    description = data;
                  },
                  hintText: 'Description',
                ),
                SizedBox(height: 10),
                CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'Price',
                  inputType: TextInputType.number,
                ),
                SizedBox(height: 10),
                CustomTextField(
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'Image',
                ),
                SizedBox(height: 50),
                CustomButton(
                  text: 'Update',
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);
                    } catch (e) {}
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: productName == null ? product.title : productName!,
      price: price == null ? product.price.toString() : price!,
      description: description == null ? product.desc : description!,
      image: image == null ? product.image : image!,
      category: product.category,
    );
    //isLoading = false;
  }
}
