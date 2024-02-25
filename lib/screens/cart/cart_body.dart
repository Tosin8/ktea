import 'package:flutter/material.dart';
import 'package:ktea/model/cart_item.dart';

class Cart_Body extends StatefulWidget {
  const Cart_Body({super.key});

  @override
  State<Cart_Body> createState() => _Cart_BodyState();
}

class _Cart_BodyState extends State<Cart_Body> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 100, width: 100, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(
                        cartItems[0].image
                      ), fit: BoxFit.cover)),
                ), 
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(cartItems[0].name),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    )
        
    ); 
  }
}
