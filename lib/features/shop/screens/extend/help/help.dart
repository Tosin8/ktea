import 'package:flutter/material.dart';


import '../../../../../utils/app_widgets.dart';
import '../../home/home_widget.dart';
import 'help_body.dart';

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
          title: Text(
            'Help',
            style: AppBar_Header,
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.blueAccent),
        ),
        body: Help_Body());
  }
}
