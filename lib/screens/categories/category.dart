import 'package:flutter/material.dart';

import 'category_body.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  static String routeName = '/Category';

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
     
      body: Category_Body(),
    );
  }
}
