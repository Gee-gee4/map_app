import 'package:flutter/material.dart';

SizedBox myListView(String myText) {
  return SizedBox(
    height: 80,
    width: 200,
    child: ListView(
      children: [
        Card(
          child: ListTile(
           title: Text(myText),
          ),
        ),
      ],
    ),
  );
}
