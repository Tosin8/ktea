import 'package:flutter/material.dart';


import '../../../../utils/app_widgets.dart';
import '../home/home_widget.dart';
import 'saved_body.dart';

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
     
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
