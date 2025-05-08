import 'package:flutter/material.dart';
import 'package:map_app/Pages/deserts_page.dart';
import 'package:map_app/Pages/drinks_page.dart';
import 'package:map_app/Pages/meals_page.dart';
import 'package:map_app/Widgets/reusable_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            style: IconButton.styleFrom(iconSize: 22),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myListView(
              'Meals',
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MealPage(),
                    ));
              },
            ),
            myListView(
              'Drinks',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrinksPage(),
                  ),
                );
              },
            ),
            myListView(
              'Desert',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DesertsPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
