import 'package:flutter/material.dart';

import 'splash_widgets.dart';

class Splash_Body extends StatelessWidget {
  const Splash_Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        bkgImage,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 120),
          child: Column(
            children: [
              const App_Icon(),
              const SizedBox(height: 70),
              const Header_Text(),
              const SizedBox(height: 60),
              const Sub_Text(),
              const SizedBox(height: 160),
              GestureDetector(
                onTap: () {},
                child: Container(
                    width: 167,
                    height: 55,
                    decoration: const BoxDecoration(color: Colors.black),
                    child: const Center(
                      child: Text(
                        'Start Shopping',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
