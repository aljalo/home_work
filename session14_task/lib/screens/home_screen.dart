import 'package:flutter/material.dart';
import 'package:session14/widgets/item.dart';
import 'package:session14/models/tune_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<ToneModel> tunes = [
    ToneModel(color: Colors.red, sound: ''),
    ToneModel(color: Colors.blue, sound: ''),
    ToneModel(color: Colors.green, sound: ''),
    ToneModel(color: Colors.yellow, sound: ''),
    ToneModel(color: Colors.orange, sound: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Tunes Player', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
