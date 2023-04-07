import 'package:flutter/material.dart';

import '../pages/cart_page.dart';
import '../pages/home_page/home_page.dart';
import '../pages/profile_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final widgetOptions = [
    const HomeePage(),
    const CartPage(),
    const ProfilePage(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        onTap: (x) {
          setState(() {
            index = x;
          });
        },
        iconSize: 30,
        elevation: 8.0,
        showSelectedLabels: true,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.green,
              ),
              label: "Basket"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              label: "Profile"),
        ],
      ),
      body: widgetOptions[index],
    );
  }
}
