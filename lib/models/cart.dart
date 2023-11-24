import 'package:flutter/material.dart';
import 'package:minimalshop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes
  List<Shoe> items = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'assets/images/zoomfreak.jpeg',
    ),
    Shoe(
        name: 'Air Jordans',
        price: '220',
        description:
            'You\'ve got the hops and the speed-lace up in shoes that enhance to bring it up',
        imagePath: 'assets/images/airjordan.png'),
    Shoe(
      name: 'KD Treys',
      price: '240',
      description:
          'With its lightweight upper and plush support system, the KD Trey 5 X can help you float like KD.',
      imagePath: 'assets/images/kdtrey.jpeg',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '190',
      description:
          'Whether you’re a dunk contest-like leaper or a below-the-rim wonder roaming the baseline, feel faster, lower to the court and assured in the LeBron NXXT Gen.',
      imagePath: 'assets/images/kyrie.png',
    ),
  ];

  //user cart
  List<Shoe> userCart = [];
  //get items
  List<Shoe> getItems() {
    return items;
  }

  //get user cart
  List<Shoe> getCart() {
    return userCart;
  }

  //add item to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void remove(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
