import 'package:flutter/material.dart';
import 'package:map_app/Model/menu_item.dart';

class DetailsPage extends StatelessWidget {
  final MenuItem meal;
  const DetailsPage({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('This is the ${meal.name} Page'),
          ),
        ],
      ),
    );
  }
}
