import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:furniture_app/splash_screen/splash_widgets.dart';

class App_Drawer extends StatelessWidget {
  const App_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: App_Icon(),
        ),
        const Divider(),
        Column(
          children: [
            ListTile(
              leading: SvgPicture.asset('assets/images/home_black.svg'),
              title: const Text('Home'),
            ),
          ],
        )
      ],
    ));
  }
}
