import 'package:flutter/material.dart';
import 'package:session13/models/item_model.dart';
import 'package:session13/components/phrases_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(
      enText: 'Are you coming',
      jpText: '来ますか',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      enText: 'Do not forget to subscribe',
      jpText: '購読をお忘れなく',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      enText: 'How are you feeling',
      jpText: 'ご気分はいかがですか',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      enText: 'I love animel',
      jpText: 'アニメ大好き',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      enText: 'I love programming',
      jpText: '私はプログラミングが大好きです',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      enText: 'Programming is easy',
      jpText: 'プログラミングは簡単',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      enText: 'What is your name',
      jpText: 'あなたの名前は何ですか',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      enText: 'Where are you going',
      jpText: 'どこに行くの',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),

    ItemModel(
      enText: 'Yes I`m coming',
      jpText: 'はい、行きます',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.brown,
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(color: Colors.lightBlue, item: phrasesList[index]);
        },
      ),
    );
  }
}
