import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:map_app/Model/menu_data.dart';
import 'package:map_app/Model/menu_item.dart';
import 'package:map_app/Pages/cart_page.dart';
import 'package:map_app/Pages/details_page.dart';
import 'package:map_app/Widgets/reusable_widgets.dart';

class DrinksPage extends StatelessWidget {
  const DrinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> drinks =
        menuCategories.where((item) => item.category == 'Drinks').toList();
    return Scaffold(
      appBar: myAppBar(
        Text('Drinks Page'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemBuilder: (context, index) {
                final meal = drinks[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(meal: meal),
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Text(meal.name),
                      title: Text(meal.description),
                      subtitle: Text(
                        (meal.price).toString(),
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.add_circle),
                        onPressed: () {
                          final box = Hive.box<MenuItem>('myCartBox');
                          box.add(meal);
                        },
                        style: IconButton.styleFrom(iconSize: 22),
                      ),
                    ),
                  ),
                );
              },
              itemCount: drinks.length,
            ),
          ),
          myButton(
            Text(
              'Go to Cart',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
