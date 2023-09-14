import 'package:flutter/material.dart';

import '../home/home_widget.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  static String routeName = '/Saved';

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: App_Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueAccent),
      ),
      body: Center(
        child: Text('Saved'),
      ),
    );
  }
}
