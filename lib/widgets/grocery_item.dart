import 'package:flutter/material.dart';

import 'package:shop_list/models/groceries.dart';

class GroceryItem extends StatelessWidget {
  const GroceryItem({
    super.key,
    required this.grocery,
  });

  final Grocery grocery;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: [
            const Icon(
              Icons.square,
              color: Colors.amber,
            ),
            const SizedBox(width: 50),
            Text(
              grocery.title,
            ),
            const SizedBox(width: 50),
            Text(
              grocery.quantity.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
