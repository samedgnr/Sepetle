import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/item_card.dart';
import '../model/cart_model.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Snacks",
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
          toolbarHeight: 65.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 12, top: 1),
            child: Column(
              children: [
                const SizedBox(height: 35),
                Expanded(child:
                    Consumer<CartModel>(builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: CartModel.shopItems.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 290,
                    ),
                    itemBuilder: (context, index) {
                      return ItemCard(
                        itemName: CartModel.shopItems[index][0],
                        itemPrice: CartModel.shopItems[index][1],
                        itemPath: CartModel.shopItems[index][2],
                        itemdescription: CartModel.shopItems[index][3],
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCard(index);
                        },
                      );
                    },
                  );
                }))
              ],
            ),
          ),
        ));
  }
}
