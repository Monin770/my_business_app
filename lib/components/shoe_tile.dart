import 'package:flutter/material.dart';
import 'package:my_business_app/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  void Function()? onTap;
  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
    });
  Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe picture
          ClipRRect(
            borderRadius:BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath)
            ),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.descripton,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                //shoe name
                Text(
                  shoe.name,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),
                ),
            
                const SizedBox(height: 5),
            
                //price
                Text(
                  '\$'+ shoe.price,
                  style: const TextStyle(
                  color: Colors.blueGrey,
                 ),
                ),
                  ],
                ),
            
                //plus button
                GestureDetector(
                  onTap: onTap,
                   child: Container(
                     padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                       color: Colors.black,
                        borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                    child: const Icon(Icons.add, color: Colors.white,),
                  ),
                ),
              ],
            ),
          ),



          //button to add to cart

        ],
      ),
    );
  }
}