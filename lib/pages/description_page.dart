import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  DescriptionPage({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.itemPath,
    required this.itemDescription,
    required this.onPressed,
    void Function()? onpressed,
  });
  final String itemName;
  final String itemPrice;
  final String itemPath;
  final String itemDescription;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Description",
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
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                itemPath,
                height: 210,
              ),
            ),
            Text(itemName,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 2,
            ),
            Text('\$$itemPrice',
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                )),
            const Padding(
              padding: EdgeInsets.fromLTRB(2, 30, 300, 0),
              child: Text("Details",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  )),
            ),
            const Divider(
              height: 12,
              color: Color.fromARGB(255, 70, 69, 69),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 5, bottom: 10, right: 15),
                    child: SingleChildScrollView(
                      child: Text(
                        itemDescription,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: ElevatedButton(
                onPressed: onPressed,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  minimumSize: MaterialStateProperty.all(
                    const Size(380, 50),
                  ),
                ),
                child: const Text('Add to Basket',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
