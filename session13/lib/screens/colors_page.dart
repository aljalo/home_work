import 'package:flutter/material.dart';
import 'package:session13/components/list_item.dart';
import 'package:session13/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> colorsList = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      enText: 'Black',
      jpText: '黒',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      enText: 'Brown',
      jpText: '茶色',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      enText: 'Dusty Yellow',
      jpText: 'ダスティイエロー',
      sound: 'sounds/colors/dusty_yellow.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      enText: 'Gray',
      jpText: 'グレー',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      enText: 'Green',
      jpText: '緑',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      enText: 'Red',
      jpText: '赤',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      enText: 'White',
      jpText: '白',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/yellow.png',
      enText: 'Yellow',
      jpText: '黄色',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),

        backgroundColor: Colors.brown,
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return Item(color: Colors.purple, item: colorsList[index]);
        },
      ),
    );
  }
}
