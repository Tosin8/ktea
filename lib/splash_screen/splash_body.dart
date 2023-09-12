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
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 120),
          child: Column(
            children: [
              App_Icon(),
              SizedBox(height: 70),
              Header_Text(),
              SizedBox(height: 60),
              Sub_Text(),
              SizedBox(height: 160),
              Splash_Button()
            ],
          ),
        ),
      ],
    );
  }
}
