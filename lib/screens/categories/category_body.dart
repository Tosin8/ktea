import 'package:flutter/material.dart';

import 'category_widget.dart';

class Category_Body extends StatefulWidget {
  const Category_Body({super.key});

  @override
  State<Category_Body> createState() => _Category_BodyState();
}

class _Category_BodyState extends State<Category_Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10
      ),
        child: ListView(children:  [
          const Text('Collection', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),), 
          // HomeDecoration(),
          // SizedBox(height: 20),
          // Sofa(),
          // SizedBox(height: 20),
          // TableP(),
          // SizedBox(height: 20),
          // Cabinet(),
          // SizedBox(height: 20),
           //Light(),
           const SizedBox(height: 10), 
           Container(
            height: 250,
            width: 300,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/collections/1.jpg',),
                fit: BoxFit.cover,)
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color.black])
              ),
            ),
           )
        ]));
  }
}
