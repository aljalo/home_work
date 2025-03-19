import 'package:flutter/material.dart';
import 'package:session13/components/item_info.dart';
import 'package:session13/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color});

  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.orange.shade50,
            child: Image.asset(item.image!),
          ),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}

