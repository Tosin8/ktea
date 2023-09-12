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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 120),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/app_icon_black_25.png',
                      ),
                      Text(
                        'PARADISE',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Text(
                        'HOME',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 3.90),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Column(
                  children: [
                    Text(
                      'MAKE YOUR',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'HOME BEAUTIFUL',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
