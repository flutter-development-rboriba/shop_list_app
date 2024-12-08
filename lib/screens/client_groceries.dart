import 'package:flutter/material.dart';

import 'package:shopping_list/data/dummy_data.dart';
import 'package:shopping_list/widgets/grocery_item.dart';

class GroceriesScreen extends StatelessWidget {
  const GroceriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Column(
              children: [
                for (final grocery in allGroceries)
                  GroceryItem(grocery: grocery)
              ],
            )
          ],
        ),
      ),
    );
  }
}
