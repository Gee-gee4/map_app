import 'package:flutter/material.dart';
import 'package:map_app/Pages/cart_page.dart';
import 'package:map_app/Pages/deserts_page.dart';
import 'package:map_app/Pages/drinks_page.dart';
import 'package:map_app/Pages/meals_page.dart';
import 'package:map_app/Widgets/reusable_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        Text(
          'Home Page',
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(),
            ),
          );
        },
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
