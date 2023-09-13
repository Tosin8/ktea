import 'package:flutter/material.dart';

class App_Drawer extends StatelessWidget {
  const App_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/icons/app_icon_black_25.png',
              ),
              const Text(
                'PARADISE',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0,
                ),
              ),
              const Text(
                'HOME',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 3.90),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
