import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar() {
  return AppBar(
    title: Text("Travel Destination"),
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(Icons.favorite_border, color: Colors.black),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.share, color: Colors.black),
        onPressed: () {},
      ),
    ],
  );
}
