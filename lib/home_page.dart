import 'package:flutter/material.dart';
import 'package:map_app/reusable_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myListView('Meals'),
            myListView('Drinks'),
            myListView('Desert'),
          ],
        ),
      ),
    );
  }
}
