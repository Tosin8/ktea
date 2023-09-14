import 'package:flutter/material.dart';

import '../home/home_widget.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  static String routeName = '/Help';
  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: App_Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.blueAccent),
        ),
        body: Center(
          child: Text('Help'),
        ));
  }
}
