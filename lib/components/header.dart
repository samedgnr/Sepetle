import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      height: size.height * 0.3,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 30,
            ),
            height: size.height * 0.28,
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
            child: Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Welcome ",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Image.asset(
                  "lib/images/iconShop.png",
                  height: 60,
                ),
              ],
            ),
          ),
          // Search Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: const Color.fromARGB(255, 1, 37, 2)
                            .withOpacity(0.5))
                  ]),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "Search",
                  filled: true,
                  hintStyle: TextStyle(
                    color: Colors.green,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
