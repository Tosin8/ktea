import 'package:flutter/material.dart';
import 'package:furniture_app/components/app_widgets.dart';
import 'package:furniture_app/screens/saved/saved_body.dart';

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
          title: Text(
            'Saved Items',
            style: AppBar_Header,
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.blueAccent),
        ),
        body: Saved_Body());
  }
}
