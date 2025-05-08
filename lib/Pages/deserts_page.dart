import 'package:flutter/material.dart';
import 'package:map_app/Model/menu_data.dart';
import 'package:map_app/Model/menu_item.dart';
import 'package:map_app/Pages/details_page.dart';

class DesertsPage extends StatelessWidget {
  const DesertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> deserts =
        menuCategories.where((item) => item.category == 'Desert').toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Desert Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemBuilder: (context, index) {
                final meal = deserts[index];
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
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {},
                        style: IconButton.styleFrom(iconSize: 22),
                      ),
                    ),
                  ),
                );
              },
              itemCount: deserts.length,
            ),
          ),
        ],
      ),
    );
  }
}
