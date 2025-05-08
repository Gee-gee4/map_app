import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:map_app/Model/menu_item.dart';
import 'package:map_app/Pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); // initializes Hive for Flutter
  // 3. Register the adapter for MenuItem
  
  /*Hive needs to know how to convert your MenuItem object into storable data and back.
The adapter does this job*/
 Hive.registerAdapter(MenuItemAdapter());
  // 4. Open the cart box
  await Hive.openBox<MenuItem>('myCartBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
