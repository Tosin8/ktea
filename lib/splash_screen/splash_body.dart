import 'package:flutter/material.dart';

import 'splash_widgets.dart';

class Splash_Body extends StatefulWidget {
  const Splash_Body({
    super.key,
  });

  @override
  State<Splash_Body> createState() => _Splash_BodyState();
}

class _Splash_BodyState extends State<Splash_Body> {
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
