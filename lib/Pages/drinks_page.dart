import 'package:flutter/material.dart';
import 'package:map_app/Model/menu_data.dart';
import 'package:map_app/Model/menu_item.dart';
import 'package:map_app/Pages/details_page.dart';

class DrinksPage extends StatelessWidget {
  const DrinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> drinks =
        menuCategories.where((item) => item.category == 'Drinks').toList();
    return Scaffold(
       appBar: AppBar(
        title: Text('Drinks Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 600,
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
                    child: ListTile(
                      title: Text(meal.name),
                      subtitle: Text(meal.description),
                      trailing: Text(meal.price.toString()),
                    ),
                  ),
                );
              },
              itemCount: drinks.length,
            ),
          ),
        ],
      ),
    );
  }
}
