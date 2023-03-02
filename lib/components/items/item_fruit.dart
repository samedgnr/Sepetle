import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/cart_model.dart';
import '../item_card.dart';

class ItemFruits extends StatelessWidget {
  const ItemFruits({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
              itemName: "Banana",
              itemPrice: CartModel.shopItems[0][1],
              itemPath: CartModel.shopItems[0][2],
              itemdescription: CartModel.shopItems[0][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).addItemToCard(0);
              }),
          ItemCard(
              itemName: "Apple",
              itemPrice: CartModel.shopItems[1][1],
              itemPath: CartModel.shopItems[1][2],
              itemdescription: CartModel.shopItems[1][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).addItemToCard(1);
              }),
          ItemCard(
              itemName: "Orange",
              itemPrice: CartModel.shopItems[2][1],
              itemPath: CartModel.shopItems[2][2],
              itemdescription: CartModel.shopItems[2][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).addItemToCard(2);
              }),
          ItemCard(
              itemName: "Pineapple",
              itemPrice: CartModel.shopItems[3][1],
              itemPath: CartModel.shopItems[3][2],
              itemdescription: CartModel.shopItems[3][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).addItemToCard(3);
              }),
          ItemCard(
              itemName: "Tomato",
              itemPrice: CartModel.shopItems[4][1],
              itemPath: CartModel.shopItems[4][2],
              itemdescription: CartModel.shopItems[4][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).addItemToCard(4);
              }),
          ItemCard(
              itemName: "Cucumber",
              itemPrice: CartModel.shopItems[5][1],
              itemPath: CartModel.shopItems[5][2],
              itemdescription: CartModel.shopItems[5][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).addItemToCard(5);
              }),
          ItemCard(
              itemName: "Lemon",
              itemPrice: CartModel.shopItems[6][1],
              itemPath: CartModel.shopItems[6][2],
              itemdescription: CartModel.shopItems[6][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).addItemToCard(6);
              }),
          ItemCard(
              itemName: "Carrot",
              itemPrice: CartModel.shopItems[7][1],
              itemPath: CartModel.shopItems[7][2],
              itemdescription: CartModel.shopItems[7][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false).addItemToCard(7);
              }),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
