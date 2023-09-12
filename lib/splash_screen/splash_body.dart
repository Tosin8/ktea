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
        const Positioned(
          top: 50,
          child: Column(
            children: [
              Positioned(
                left: 52,
                top: 233,
                child: Text(
                  'MAKE YOUR ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
              Positioned(
                left: 52,
                top: 267,
                child: Text(
                  'HOME BEAUTIFUL',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
