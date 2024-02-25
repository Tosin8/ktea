// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    body: Column(
      children: [
        Column(
          children: 
        
        List.generate(
          cartItems.length, (index)=> 
          myCartProductCard
          (cartItems: cartItems[index],)
        ), 
        
        ),
        SizedBox(height: 100,), 
        Container(
          child: 
          Row(
            children: [
              Text('Total', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text(cartItems.length.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ]
          ),
        )
      ],
    ), 
    ); 
  }
}

class myCartProductCard extends StatelessWidget {
  const myCartProductCard({
    Key? key,
    required this.cartItems,
  }) : super(key: key);

final CartItemModel cartItems; 

@override
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        cartItems.image
                      ), fit: BoxFit.cover)),
                ), 
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cartItems.productId),
                    Text(cartItems.name, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
                    Text(cartItems.cost.toString(), 
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  ],
                ), 
                const SizedBox(width: 20,), 
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.remove_circle)),
                    Text(cartItems.quantity.toString()),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
