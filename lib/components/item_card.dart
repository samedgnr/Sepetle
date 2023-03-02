import 'package:flutter/material.dart';

import '../pages/description_page.dart';

class ItemCard extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemPath;
  final String itemdescription;

  void Function()? onPressed;
  ItemCard({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.itemPath,
    required this.itemdescription,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10, bottom: 30),
      width: size.width * 0.4,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DescriptionPage(
                  itemName: itemName,
                  itemPath: itemPath,
                  itemPrice: itemPrice,
                  itemDescription: itemdescription,
                  onPressed: onPressed,
                );
              }));
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                itemPath,
                width: 150,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DescriptionPage(
                  itemName: itemName,
                  itemPath: itemPath,
                  itemPrice: itemPrice,
                  itemDescription: itemdescription,
                  onPressed: onPressed,
                );
              }));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 7),
                        color: Colors.green.withOpacity(0.25))
                  ]),
              child: Column(
                children: [
                  Text(itemName),
                  const Divider(
                    height: 1,
                    color: Colors.white,
                  ),
                  MaterialButton(
                    onPressed: onPressed,
                    color: Colors.green,
                    child: Text('\$$itemPrice',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
