import 'package:flutter/material.dart';

SizedBox myListView(String myText, Function()? onTap) {
  return SizedBox(
    height: 80,
    width: 200,
    child: ListView(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
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

//------------------------------------------------------------------------------------
AppBar myAppBar(Text myText, {Function()? onPressed}) {
  return AppBar(
    title: myText,
    centerTitle: true,
    actions: onPressed != null
        ? [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: onPressed,
              style: IconButton.styleFrom(iconSize: 22),
            ),
          ]
        : null,
  );
}

//------------------------------------------------------------------------------------
ElevatedButton myButton(Text buttonText,Function()? onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
        elevation: 1,
        padding: EdgeInsets.all(18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: Colors.amber[500]),
    child: buttonText
  );
}
