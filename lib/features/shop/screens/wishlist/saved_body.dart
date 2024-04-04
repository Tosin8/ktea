import 'package:flutter/material.dart';

class Saved_Body extends StatefulWidget {
  const Saved_Body({super.key});

  @override
  State<Saved_Body> createState() => _Saved_BodyState();
}

class _Saved_BodyState extends State<Saved_Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('No Saved Items'),
    ));
  }
}
