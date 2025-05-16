import 'package:api_app/models/product_model.dart';
import 'package:api_app/screens/update_product_page.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  CustomCard({required this.product, super.key});

  ProductModel product;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          UpdateProductPage.id,
          arguments: widget.product,
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey,
                  spreadRadius: 0,
                  offset: Offset(10, 10),
                ),
              ],
            ),

            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //'Handbag',
                      widget.product.title.substring(0, 6),
                      style: TextStyle(color: Colors.grey),
                    ),
                    //SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          //  r'$ 299',
                          r'$'
                          '${widget.product.price.toString()}',
                        ),
                        IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 8,
            top: -60,
            child: Image.network(
              //'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
              widget.product.image,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
