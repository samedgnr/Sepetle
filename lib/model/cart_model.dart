import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  static final List _shopitems = [
    // [ itemName , iremPrice , imagePath ]
    //Fruit
    ["Banana", "5.00", "lib/images/banana.jpeg", "-600 g"],
    ["Apple", "3.00", "lib/images/apple.jpeg", "-600 g"],
    ["Orange", "3.00", "lib/images/oranges.jpg", "-600 g"],
    ["Pineapple", "6.00", "lib/images/pineapple.jpg", "-600 g"],
    ["Tomato", "2.50", "lib/images/tomato.jpg", "-600 g"],
    ["Cucumber", "3.50", "lib/images/cucumber.png", "-600 g"],
    ["Lemon", "2.00", "lib/images/lemon.jpg", "-600 g"],
    ["Carrot", "4.00", "lib/images/carrot.jpg", "-600 g"],
    //Baverage
    ["Water", "0.50", "lib/images/water.jpg", "-500 ml\n-Doğal Kaynak Suyu"],
    [
      "Cola",
      "1.50",
      "lib/images/cola.jpg",
      "-250 ml\n-Su, şeker veya fruktoz-glikoz şurubu "
    ],
    [
      "Fanta",
      "1.50",
      "lib/images/fanta.jpg",
      "-250 ml\n-Su, şeker (s) veya fruktoz glukoz şurubu (f)"
    ],
    [
      "Soda",
      "1.50",
      "lib/images/gazoz.jpg",
      "-250 ml\n-Su, şeker (s) veya fruktoz-glukoz şurubu (f)"
    ],
    [
      "Energy Drink",
      "2.50",
      "lib/images/redbull.jpg",
      "-250 ml\n-Su sakkaroz, glikoz, asit(sitrik asit), karbodioksit"
    ],
    //Food
    ["Chicken", "11.00", "lib/images/chicken.jpg", "-750 g"],
    [
      "Dardanel",
      "7.00",
      "lib/images/dardanatel.jpeg",
      "-ton balığı, yağ/su ve tuz"
    ],
    [
      "Spaghetti",
      "3.00",
      "lib/images/spaghetti.jpg",
      "-500 g\n-durum buğdayı irmiği ve su ile üretilmektedir.\n-İçerisinde hiçbir katkı maddesi yoktur."
    ],
    ["Oil", "8.00", "lib/images/oil.jpg", "-1L\n-Natürel zeytinyağı"],
    [
      "Tomato Paste",
      "5.00",
      "lib/images/salca.jpeg",
      "-710 g\n-Domates, Biber, tuz ve limon suyu."
    ],
    //Snack
    [
      "Chips",
      "2.00",
      "lib/images/chips.jpg",
      "-193g\n-Patates, mısır yağı, tuz."
    ],
    [
      "Pringles",
      "5.00",
      "lib/images/pringles.jpg",
      "-165 g\n-Kurutulmuş patates, bitkisel sıvı yağ , pirinç unu"
    ],
    [
      "Oreo",
      "1.50",
      "lib/images/oreo.jpg",
      "-38 g\n-Buğday unu, şeker,bitkisel yağ, kakao tozu"
    ],
    [
      "Haribo",
      "1.00",
      "lib/images/haribo.jpeg",
      "-80 g\n-Glikoz şurubu, şeker, su, sığır jelatini, dekstroz,"
    ],
    [
      "Dido",
      "1.50",
      "lib/images/dido.jpeg",
      "-35 g\n-Şeker, tam yağlı süttozu, kakao kitlesi"
    ],
    [
      "Chocolate",
      "5.00",
      "lib/images/choo.jpg",
      "-80 g\n- Şeker, tam yağlı süt tozu, kakao yağı"
    ],
    [
      "Cornetto",
      "4.00",
      "lib/images/cornetto.jpeg",
      "-125 g\n-Su, şeker, bitkisel yağlar , bitter çikolata"
    ],
    [
      "Magnum",
      "5.00",
      "lib/images/magnum.jpeg",
      "-100 g\n-Su, şeker, tereyağ(süt ürünü), kakao kitlesi"
    ],
  ];

  final List _cartItems = [];

  static get shopItems => _shopitems;

  get cartItems => _cartItems;

  void addItemToCard(int index) {
    _cartItems.add(_shopitems[index]);
    notifyListeners();
  }

  void removeItemFromCard(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
