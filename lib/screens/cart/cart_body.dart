import 'package:flutter/material.dart';

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
        Container(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(''))),
              )
            ],
          ),
        )
      ],
    )
        
    ); 
  }
}
