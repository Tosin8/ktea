import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:furniture_app/splash_screen/splash_widgets.dart';

// ignore: camel_case_types
class App_Drawer extends StatelessWidget {
  const App_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: App_Icon(),
        ),
        Divider(),
        Screen_Nav()
      ],
    ));
  }
}

// ignore: camel_case_types
class Screen_Nav extends StatelessWidget {
  const Screen_Nav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: ListTile(
            leading: SvgPicture.asset('assets/images/home_black.svg'),
            title: const Text('Home'),
            splashColor: Colors.blueAccent,
          ),
        ),
        ListTile(
          leading: SvgPicture.asset('assets/images/home_black.svg'),
          title: const Text('Cart'),
        ),
        ListTile(
          leading: SvgPicture.asset('assets/images/home_black.svg'),
          title: const Text('Saved Items'),
        ),
        ListTile(
          leading: SvgPicture.asset('assets/images/home_black.svg'),
          title: const Text('Profile'),
        ),
        ListTile(
          leading: SvgPicture.asset('assets/images/home_black.svg'),
          title: const Text('Help'),
        ),
      ],
    );
  }
}
