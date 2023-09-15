import 'package:flutter/material.dart';

import 'help_widget.dart';

class Help_Body extends StatefulWidget {
  const Help_Body({super.key});

  @override
  State<Help_Body> createState() => _Help_BodyState();
}

class _Help_BodyState extends State<Help_Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ChatLive_Button(),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            'NEED HELP? ',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 10),
        Container(
            height: 500,
            decoration: const BoxDecoration(
                color: Color(0xfff4f9ff),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 0.0, blurRadius: 1.0)
                ]),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Place an Order',
                      style: TextStyle(fontSize: 16),
                    ),
                    Image.asset('assets/icons/arrow_forward.png'),
                  ],
                )
              ],
            ))
      ],
    );
  }
}
