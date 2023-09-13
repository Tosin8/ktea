import 'package:flutter/material.dart';

import 'home_widget.dart';

class Home_Body extends StatefulWidget {
  const Home_Body({super.key});

  @override
  State<Home_Body> createState() => _Home_BodyState();
}

class _Home_BodyState extends State<Home_Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.black,
          actions: [
            GestureDetector(
                onTap: () {},
                child: Image.asset('assets/icons/notification_bell_23.png')),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset("assets/icons/camera_25.png"),
                  const SizedBox(width: 5),
                  const Text(
                    'Scan',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 12),
                ],
              ),
            )
          ],
        ),
        drawer: const App_Drawer(),
      ),
    );
  }
}
