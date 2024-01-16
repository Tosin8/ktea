import 'package:flutter/material.dart';

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
          Hero(
            tag: 'dining',
            child: Container(
              height: 200,
              width: 300,
           decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/collections/1.jpg')),
            ),
          )
     ) ]),
    );
  }
}