import 'package:flutter/material.dart';
import 'package:map_app/Model/menu_data.dart';
import 'package:map_app/Model/menu_item.dart';
import 'package:map_app/Pages/cart_page.dart';
import 'package:map_app/Pages/details_page.dart';
import 'package:map_app/Widgets/reusable_widgets.dart';

class DesertsPage extends StatelessWidget {
  const DesertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> deserts =
        menuCategories.where((item) => item.category == 'Desert').toList();
    return Scaffold(
      appBar: myAppBar(
        Text('Desert Page'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
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
                        icon: Icon(Icons.add_circle),
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
