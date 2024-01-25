import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dining_body_widget.dart';



class DiningScreen extends StatefulWidget {
  const DiningScreen({super.key});

  @override
  State<DiningScreen> createState() => _DiningScreenState();
}

class _DiningScreenState extends State<DiningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          header(),
          SizedBox(height: 5), 
         
        ],
      )
    );
  }
}