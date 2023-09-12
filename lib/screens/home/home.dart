import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home/home_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static String routeName = '/Home';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Home_Body(),
    );
  }
}
