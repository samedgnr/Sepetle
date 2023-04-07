import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/cart_model.dart';
import '../item_card.dart';

class ItemFood extends StatelessWidget {
  const ItemFood({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
              itemName: "Chicken",
              itemPrice: CartModel.shopItems[13][1],
              itemPath: CartModel.shopItems[13][2],
              itemdescription: CartModel.shopItems[13][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(13);
              }),
          ItemCard(
              itemName: "Dardanel",
              itemPrice: CartModel.shopItems[14][1],
              itemPath: CartModel.shopItems[14][2],
              itemdescription: CartModel.shopItems[14][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(14);
              }),
          ItemCard(
              itemName: "Spaghetti",
              itemPrice: CartModel.shopItems[15][1],
              itemPath: CartModel.shopItems[15][2],
              itemdescription: CartModel.shopItems[15][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(15);
              }),
          ItemCard(
              itemName: "Oil",
              itemPrice: CartModel.shopItems[16][1],
              itemPath: CartModel.shopItems[16][2],
              itemdescription: CartModel.shopItems[16][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(16);
              }),
          ItemCard(
              itemName: "Tomato Paste",
              itemPrice: CartModel.shopItems[17][1],
              itemPath: CartModel.shopItems[17][2],
              itemdescription: CartModel.shopItems[17][3],
              onPressed: () {
                Provider.of<CartModel>(context, listen: false)
                    .addItemToCard(17);
              }),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
