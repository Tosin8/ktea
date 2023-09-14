import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home/home.dart';
import 'package:furniture_app/splash_screen/splash.dart';

final Map<String, WidgetBuilder> routes = {
  Splash_Screen.routeName: (context) => const Splash_Screen(),
  Home.routeName: (context) => const Home(),
  Cart.routeName: (context) => const Cart(),
  Saved.routeName: (context) => const Saved(),
  Profile.routeName: (context) => const Profile(),
  Help.routeName: (context) => const Help(),
};
