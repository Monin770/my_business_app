import 'package:flutter/material.dart';
import 'package:my_business_app/components/cart_item.dart';
import 'package:my_business_app/models/cart.dart';
import 'package:my_business_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          const Text(
            'My Cart',
             style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 24
             ),  
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
             
              //get individiual shoe
              Shoe individiualShoe = value.getUserCart()[index];

              //return the cart item
              return CartItem(shoe: individiualShoe);
           },),),
         ],
       ),
     ),
   );
 }
}