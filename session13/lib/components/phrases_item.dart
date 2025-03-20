import 'package:flutter/material.dart';
import 'package:session13/components/item_info.dart';
import 'package:session13/models/item_model.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.color, required this.item});
  final Color color;
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(height: 100, color: color, child: ItemInfo(item: item));
  }
}
