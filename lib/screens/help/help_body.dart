import 'package:flutter/material.dart';

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
        Container(
          child: Row(
            children: [
              Image.asset('assets/icons/chat_20.png'),
              Text('CHAT WITH US'),
            ],
          ),
        )
      ],
    );
  }
}
