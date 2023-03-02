import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/model/cart_model.dart';

import '../item_card.dart';

class ItemBeverages extends StatelessWidget {
  const ItemBeverages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
              itemName: "Water",
              itemPrice: CartModel.shopItems[8][1],
              itemPath: CartModel.shopItems[8][2],
              itemdescription: CartModel.shopItems[8][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).addItemToCard(8);
              }),
          ItemCard(
              itemName: "Cola",
              itemPrice: CartModel.shopItems[9][1],
              itemPath: CartModel.shopItems[9][2],
              itemdescription: CartModel.shopItems[9][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).addItemToCard(9);
              }),
          ItemCard(
              itemName: "Fanta",
              itemPrice: CartModel.shopItems[10][1],
              itemPath: CartModel.shopItems[10][2],
              itemdescription: CartModel.shopItems[10][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(10);
              }),
          ItemCard(
              itemName: "Soda",
              itemPrice: CartModel.shopItems[11][1],
              itemPath: CartModel.shopItems[11][2],
              itemdescription: CartModel.shopItems[11][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(11);
              }),
          ItemCard(
              itemName: "Energy Drink",
              itemPrice: CartModel.shopItems[12][1],
              itemPath: CartModel.shopItems[12][2],
              itemdescription: CartModel.shopItems[12][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(12);
              }),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
