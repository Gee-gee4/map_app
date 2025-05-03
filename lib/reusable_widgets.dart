import 'package:flutter/material.dart';

SizedBox myListView(String myText) {
  return SizedBox(
    height: 80,
    width: 200,
    child: ListView(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            
          },
          child: Card(
            color: Colors.green,
            child: ListTile(
              title: Text(
                myText,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
