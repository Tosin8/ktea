import 'package:flutter/material.dart';

class Home_Body extends StatefulWidget {
  const Home_Body({super.key});

  @override
  State<Home_Body> createState() => _Home_BodyState();
}

class _Home_BodyState extends State<Home_Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.black,
        actions: [
          GestureDetector(
              onTap: () {},
              child: Image.asset('assets/icons/notification_bell_23.png')),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Image.asset("assets/icons/camera_25.png"),
                SizedBox(width: 5),
                Text(
                  'Scan',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 12),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(),
    );
  }
}
