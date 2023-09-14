import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home/home.dart';
import 'package:furniture_app/splash_screen/splash.dart';

import '../screens/cart/cart.dart';
import '../screens/help/help.dart';
import '../screens/profile/profile.dart';
import '../screens/saved/saved.dart';

final Map<String, WidgetBuilder> routes = {
  Splash_Screen.routeName: (context) => const Splash_Screen(),
  Home.routeName: (context) => const Home(),
  Cart.routeName: (context) => const Cart(),
  Saved.routeName: (context) => const Saved(),
  Profile.routeName: (context) => const Profile(),
  Help.routeName: (context) => const Help(),
};

class Screen_Nav extends StatelessWidget {
  const Screen_Nav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          ListTile(
            leading: Image.asset('assets/icons/home.png'),
            title: const Text(
              'Home',
            ),
            splashColor: Colors.blueAccent,
            onTap: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
          ListTile(
            leading: Image.asset('assets/icons/cart_20.png'),
            title: const Text('Cart'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Cart()));
            },
          ),
          ListTile(
            leading: Image.asset('assets/icons/save_20.png'),
            title: const Text('Saved Items'),
            onTap: () {
              Navigator.pushNamed(context, Saved.routeName);
            },
          ),
          ListTile(
            leading: Image.asset('assets/icons/user_20.png'),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, Profile.routeName);
            },
          ),
          ListTile(
            leading: Image.asset('assets/icons/chat_20.png'),
            title: const Text('Help'),
            onTap: () {
              Navigator.pushNamed(context, Help.routeName);
            },
          ),
        ],
      ),
    );
  }
}
