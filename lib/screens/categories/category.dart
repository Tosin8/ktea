import 'package:flutter/material.dart';
import 'package:furniture_app/components/app_widgets.dart';
import 'package:furniture_app/screens/home/home_widget.dart';

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
    return Scaffold(
      drawer: const App_Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blue),
        title: Text(
          'Category',
          style: AppBar_Header,
        ),
        centerTitle: true,
      ),
      body: const Category_Body(),
    );
  }
}
