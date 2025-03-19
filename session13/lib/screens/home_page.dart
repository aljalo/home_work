import 'package:flutter/material.dart';
import 'package:session13/screens/colors_page.dart';
import 'package:session13/screens/family_members_page.dart';
import 'package:session13/screens/numbers_page.dart';
import 'package:session13/screens/phrases_page.dart';
import 'package:session13/components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          CategoryItem(
            color: Color(0xffEF9235),
            text: 'Numbers',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumbersPage();
                  },
                ),
              );
            },
          ),
          CategoryItem(
            color: Colors.green,
            text: 'Family Member',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMembersPage();
                  },
                ),
              );
            },
          ),
          CategoryItem(
            color: Colors.purple,
            text: 'Colors',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage();
                  },
                ),
              );
            },
          ),
          CategoryItem(
            color: Colors.lightBlueAccent,
            text: 'Phrases',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
