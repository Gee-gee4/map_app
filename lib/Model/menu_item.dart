import 'package:hive/hive.dart';

part 'menu_item.g.dart'; // Needed for code generation
//Registers this class as storable
@HiveType(typeId: 0)
class MenuItem {
  //Tells Hive which field is which when reading/writing
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String category;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final double price;

  MenuItem({
    required this.name,
      required this.category,
      required this.description,
      required this.price
      });
}
