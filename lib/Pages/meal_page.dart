import 'package:flutter/material.dart';
import 'package:map_app/Model/menu_data.dart';
import 'package:map_app/Model/menu_item.dart';
import 'package:map_app/Pages/details_page.dart';

class MealPage extends StatelessWidget {
  const MealPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> meals =
        menuCategories.where((item) => item.category == 'Meals').toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemBuilder: (context, index) {
                final meal = meals[index];
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
                      title: Text(meal.name),
                      subtitle: Text(meal.description),
                      trailing: Text(meal.price.toString()),
                    ),
                  ),
                );
              },
              itemCount: meals.length,
            ),
          ),
        ],
      ),
    );
  }
}
