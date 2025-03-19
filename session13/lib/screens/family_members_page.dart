import 'package:flutter/material.dart';
import 'package:session13/components/list_item.dart';
import 'package:session13/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> membersList = const [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      enText: 'Father',
      jpText: '父親',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      enText: 'Mother',
      jpText: '母親',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      enText: 'Grandfather',
      jpText: '祖父',
      sound: 'sounds/family_members/grand_father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      enText: 'Grandmother',
      jpText: '祖母',
      sound: 'sounds/family_members/grand_mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      enText: 'Older Brother',
      jpText: '兄',
      sound: 'sounds/family_members/older_bother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      enText: 'Older Sister',
      jpText: '姉',
      sound: 'sounds/family_members/older_sister.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      enText: 'Son',
      jpText: '息子',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      enText: 'Daughter',
      jpText: '娘',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      enText: 'Younger Brother',
      jpText: '弟',
      sound: 'sounds/family_members/younger_brohter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      enText: 'Younger Sister',
      jpText: '妹',
      sound: 'sounds/family_members/younger_sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),

        backgroundColor: Colors.brown,
        title: Text(
          'Family Members',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: ListView.builder(
        itemCount: membersList.length,
        itemBuilder: (context, index) {
          return Item(color: Colors.green, item: membersList[index]);
        },
      ),
    );
  }
}
