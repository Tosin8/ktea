import 'package:flutter/material.dart';
import 'package:furniture_app/components/constants.dart';

import 'package:furniture_app/splash_screen/splash_widgets.dart';

// ignore: camel_case_types
class App_Drawer extends StatelessWidget {
  const App_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: kPrimaryColor,
        elevation: 20,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/drawer/1.jpg'),
                      fit: BoxFit.cover)),
              child: App_Icon(),
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 30),

            //child: App_Icon(),
            // ),
            const Divider(),
            const Screen_Nav(),
            const SizedBox(height: 260),
            const Divider(),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/copyright_20.png'),
                const Text('2023, Product of Paradise Home Ltd')
              ],
            ),
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
            leading: Image.asset('assets/icons/home.png'),
            title: const Text(
              'Home',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            splashColor: Colors.blueAccent,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: ListTile(
            leading: Image.asset('assets/icons/cart_20.png'),
            title: const Text('Cart'),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: ListTile(
            leading: Image.asset('assets/icons/save_20.png'),
            title: const Text('Saved Items'),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: ListTile(
            leading: Image.asset('assets/icons/user_20.png'),
            title: const Text('Profile'),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: ListTile(
            leading: Image.asset('assets/icons/chat_20.png'),
            title: const Text('Help'),
          ),
        ),
      ],
    );
  }
}

List<String> assets = [
  'assets/images/carousel/1.jpg',
  'assets/images/carousel/2.jpg',
  'assets/images/carousel/3.jpg',
  'assets/images/carousel/4.jpg',
];

var subText =
    const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500);
