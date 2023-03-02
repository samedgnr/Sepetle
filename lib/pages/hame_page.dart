import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/items/item_beverages.dart';
import '../components/items/item_food.dart';
import '../components/items/item_fruit.dart';
import '../components/items/item_snacks.dart';

import '../components/title_more.dart';

class HomeePage extends StatelessWidget {
  const HomeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // Header
            Header(),
            // Body
            TitleMore(title: "Snacks"),
            ItemSnacks(),
            TitleMore(title: "Fruits & Vegetables"),
            ItemFruits(),
            TitleMore(title: "Beverages"),
            ItemBeverages(),
            TitleMore(title: "Food"),
            ItemFood(),
          ],
        ),
      ),
    );
  }
}
