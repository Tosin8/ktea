import 'package:flutter/material.dart';

import '../home/home_widget.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  static String routeName = '/Cart';

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: App_Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueAccent),
        //backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Cart'),
      ),
    );
  }
}
