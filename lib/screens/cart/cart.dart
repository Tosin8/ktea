import 'package:flutter/material.dart';
import 'package:furniture_app/components/app_widgets.dart';
import 'package:furniture_app/screens/cart/cart_body.dart';

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
        drawer: const App_Drawer(),
        appBar: AppBar(
          title: Text(
            'Cart',
            style: AppBar_Header,
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.blueAccent),
          //backgroundColor: Colors.green,
        ),
        body: const Cart_Body());
  }
}
