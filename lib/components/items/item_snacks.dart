import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/cart_model.dart';
import '../item_card.dart';

class ItemSnacks extends StatelessWidget {
  const ItemSnacks({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
              itemName: "Chips",
              itemPrice: CartModel.shopItems[18][1],
              itemPath: CartModel.shopItems[18][2],
              itemdescription: CartModel.shopItems[18][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(18);
              }),
          ItemCard(
              itemName: "Pringles",
              itemPrice: CartModel.shopItems[19][1],
              itemPath: CartModel.shopItems[19][2],
              itemdescription: CartModel.shopItems[19][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(19);
              }),
          ItemCard(
              itemName: "Oreo",
              itemPrice: CartModel.shopItems[20][1],
              itemPath: CartModel.shopItems[20][2],
              itemdescription: CartModel.shopItems[20][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(20);
              }),
          ItemCard(
              itemName: "Haribo",
              itemPrice: CartModel.shopItems[21][1],
              itemPath: CartModel.shopItems[21][2],
              itemdescription: CartModel.shopItems[21][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(21);
              }),
          ItemCard(
              itemName: "Dido",
              itemPrice: CartModel.shopItems[22][1],
              itemPath: CartModel.shopItems[22][2],
              itemdescription: CartModel.shopItems[22][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(22);
              }),
          ItemCard(
              itemName: "Chocolate",
              itemPrice: CartModel.shopItems[23][1],
              itemPath: CartModel.shopItems[23][2],
              itemdescription: CartModel.shopItems[23][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(23);
              }),
          ItemCard(
              itemName: "Cornetto",
              itemPrice: CartModel.shopItems[24][1],
              itemPath: CartModel.shopItems[24][2],
              itemdescription: CartModel.shopItems[24][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(24);
              }),
          ItemCard(
              itemName: "Magnum",
              itemPrice: CartModel.shopItems[25][1],
              itemPath: CartModel.shopItems[25][2],
              itemdescription: CartModel.shopItems[25][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(25);
              }),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
