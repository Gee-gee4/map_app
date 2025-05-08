import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:map_app/Model/menu_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late Box<MenuItem> cartBox;
  @override
  void initState() {
    super.initState();
    cartBox = Hive.box<MenuItem>('myCartBox');
  }

  int quantity = 0;
  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decreaseQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        centerTitle: true,
      ),
      body: cartBox.isEmpty
          ? Center(child: Text('Cart is empty'))
          : ListView.builder(
              itemBuilder: (context, index) {
                final item = cartBox.getAt(index);
                if (item == null) return SizedBox();
                return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  color: Colors.blueGrey,
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(item.name),
                    subtitle: Text('\$${item.price.toString()}'),
                    trailing: Container(
                      height: 45,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.amber[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: decreaseQuantity,
                              icon: Icon(Icons.remove),
                              //splashColor: Colors.black,
                              splashRadius: 20.0,
                            ),
                            Text(quantity.toString()),
                            IconButton(
                              onPressed: increaseQuantity,
                              icon: Icon(Icons.add),
                              splashRadius: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: cartBox.length,
            ),
    );
  }
}
