import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {

  //list of Shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
     name: 'Zoom FREAK',
     price: '236',
     descripton: 'The forward-thinking design of his latest signature shoe.',
     imagePath: 'assets/images/nccc.png',
    ),

    Shoe(
      name: 'Air Jordan',
      price: '220',
      descripton: 'You\'ve got the hops and the speed-lace up in shoes that enhance', 
      imagePath: 'assets/images/pngeggx.png'
      ),

      Shoe(
      name: 'KD Treys',
      price: '240',
      descripton: 'A secure midfoot strap is suited for scoring bings and defensive', 
      imagePath: 'assets/images/pngwing2.png'
      ),

      Shoe(
      name: 'Kyire 6',
      price: '190',
      descripton: 'Bouncy cushioning is paired with soft yet supportive foam for', 
      imagePath: 'assets/images/kyire.png'
      ),
  ];

  //list of items in usear cart
  List<Shoe> userCart = [];

  //get list of items for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //adding items  to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

  


}