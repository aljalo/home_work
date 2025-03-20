import 'package:flutter/material.dart';
import 'package:session13/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;
  //final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.enText,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                item.jpText,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {
              item.playSound();
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ),
      ],
    );
  }
}
