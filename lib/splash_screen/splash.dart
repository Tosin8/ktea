import 'package:flutter/material.dart';

import 'splash_body.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  static String routeName = '/Splash_Screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Splash_Body());
  }
}
