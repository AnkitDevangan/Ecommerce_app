
import 'package:flutter/material.dart';

import 'shoe.dart';
class Cart extends ChangeNotifier {

  List<Shoe> shoeShop = [
    Shoe(name: "AirPods Pro",
        price: "299",
        imagePath: "assets/images/air.png",
        description: "Magic like you’ve never heard"),

    Shoe(name: "Galaxy Buds Pro",
        price: "199",
        imagePath: "assets/images/galaxy.png",
        description: "Magic like you’ve never heard"),

    Shoe(name: "Pixel Buds Pro",
        price: "149",
        imagePath: "assets/images/pixel.png",
        description: "Sounds good. Feels good"),

    Shoe(name: "Realme Buds T310",
        price: "49",
        imagePath: "assets/images/T310.png",
        description: "Dare to leap"),
  ];

  List userCart = [];

  List getShoeList() {
    return shoeShop;
  }

  List getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}