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
                SizedBox(height: 12),
                Help_Menu(
                  title: 'Placing an  Order',
                  press: () {},
                ),
                SizedBox(height: 30),
                Help_Menu(
                  title: 'Payment Options',
                  press: () {},
                ),
                SizedBox(height: 30),
                Help_Menu(
                  title: 'Delivery Timeline',
                  press: () {},
                ),
                SizedBox(height: 30),
                Help_Menu(
                  title: 'Tracking an Order',
                  press: () {},
                ),
                SizedBox(height: 30),
                Help_Menu(
                  title: 'Cancel an Order   ',
                  press: () {},
                ),
                SizedBox(height: 30),
                Help_Menu(
                  title: 'Create a Return   ',
                  press: () {},
                ),
                SizedBox(height: 30),
                Help_Menu(
                  title: 'Warranty              ',
                  press: () {},
                ),
                SizedBox(height: 30),
                Help_Menu(
                  title: 'About Us             ',
                  press: () {},
                ),
              ],
            ))
      ],
    );
  }
}

class Help_Menu extends StatelessWidget {
  const Help_Menu({
    super.key,
    required this.title,
    required this.press,
  });

  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: GestureDetector(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(width: 200),
              Image.asset('assets/icons/arrow_forward.png'),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
