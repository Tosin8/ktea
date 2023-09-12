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
        Container(
          child: Column(
            children: [
              Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/icons/app_icon_black_25.png',
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
