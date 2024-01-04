import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavBarApp extends StatefulWidget {
  const NavBarApp({super.key});

  @override
  State<NavBarApp> createState() => _NavBarAppState();
}

class _NavBarAppState extends State<NavBarApp> {
  int index = 2; 
  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(Icons.home, size: 30, color: Colors.white,),
       const Icon(Icons.apps, size: 30, color: Colors.white,),
        const Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
         const Icon(Icons.favorite, size: 30, color: Colors.white,),
          const Icon(Icons.person, size: 30, color: Colors.white,),
    ];
    return Scaffold( 
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Curved Nav bar'),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue, 
        backgroundColor: Colors.transparent,
        height: 60, index: index, 
        items: items, 
        onTap:(index) => setState(() =>
          this.index = index
        )), 
      ); 
    
  }
}