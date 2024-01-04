import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ktea/screens/categories/category.dart';

import '../screens/cart/cart.dart';
import '../screens/home/home.dart';
import '../screens/profile/profile.dart';
import '../screens/saved/saved.dart';

class NavBarApp extends StatefulWidget {
  const NavBarApp({super.key});

  @override
  State<NavBarApp> createState() => _NavBarAppState();
}

class _NavBarAppState extends State<NavBarApp> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>(); 
  int index = 0; 
  final screens = [
    const Home(), 
    const Category(), 
    const Cart(),
    const Saved(),
    const Profile(),
  ]; 
  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(Icons.home, size: 30, color: Colors.white,),
       const Icon(Icons.apps, size: 30, color: Colors.white,),
        const Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
         const Icon(Icons.favorite, size: 30, color: Colors.white,),
          const Icon(Icons.person, size: 30, color: Colors.white,),
    ];
    return ClipRect(
      child: Scaffold( 
        extendBody: true,
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title: const Text('Curved Nav bar'),
        // ),
        body: screens[index], 
        bottomNavigationBar: CurvedNavigationBar(
          key: navigationKey, 
          color: Colors.blue, 
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.orangeAccent,
          height: 60, index: index, 
          animationCurve: Curves.easeInOut, animationDuration: const Duration(milliseconds: 500),
          items: items, 
          onTap:(index) => setState(() =>
            this.index = index
          )), 
        ),
    ); 
    
  }
}