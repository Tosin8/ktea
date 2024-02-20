// //import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:custom_navigation_bar/custom_navigation_bar.dart';

// import 'package:flutter/material.dart';
// import 'package:ktea/screens/categories/category.dart';

// import '../screens/cart/cart.dart';
// import '../screens/form/signin/signin.dart';
// import '../screens/home/home.dart';
// import '../screens/profile/profile.dart';
// import 'package:antdesign_icons/antdesign_icons.dart';
// import '../screens/saved/saved.dart';

// class NavBarApp extends StatefulWidget {
//   const NavBarApp({super.key});

//   @override
//   State<NavBarApp> createState() => _NavBarAppState();
// }

// class _NavBarAppState extends State<NavBarApp> {
//   //final navigationKey = GlobalKey<CustomNavigationBarState>(); 
//   int currentindex = 0; 
//   final screens = [
//     const Home(), 
//     const Category(), 
//     const Cart(),
//     const Saved(),
//    // const Profile(),
//    SignIn(), 
//   ]; 
//   @override
//   Widget build(BuildContext context) {
//     // final items = [
//     //   const Icon(Icons.home, size: 30, color: Colors.white,),
//     //    const Icon(Icons.apps, size: 30, color: Colors.white,),
//     //     const Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
//     //      const Icon(Icons.favorite, size: 30, color: Colors.white,),
//     //       const Icon(Icons.person, size: 30, color: Colors.white,),
//     // ];
    
//     final items = [
//       CustomNavigationBarItem(
//         icon: 
//       const Icon(
//         Icons.home_outlined, 
      
//       size: 30,
//        color: Colors.white,), 
//        ),  
        
//       CustomNavigationBarItem(icon: const Icon(Icons.dashboard_rounded, 
//       size: 30,
//        color: Colors.white)),
//        CustomNavigationBarItem(icon: const Icon(Icons.shopping_cart_outlined,
//         size: 30, 
//         color: Colors.white, ), 
        
//         badgeCount: 0,
//          showBadge: true, 
//         ),
//         CustomNavigationBarItem(icon: const Icon(
//           Icons.favorite_outline_rounded,
          
//          size: 30,
//           color: Colors.white), 
//           badgeCount: 3 ), 
//           CustomNavigationBarItem(icon: const Icon(Icons.person_outline_rounded, 
//           size: 30,
//            color: Colors.white)), 
//     ]; 



//     return ClipRect(
//       child: Scaffold( 
//         extendBody: true,
//         // appBar: AppBar(
//         //   automaticallyImplyLeading: false,
//         //   title: const Text('Curved Nav bar'),
//         // ),

//         // CurvedNavigationBar
//         body: screens[currentindex], 
//         bottomNavigationBar: CustomNavigationBar(
//          // key: navigationKey, 
//           //color: Colors.blue, 
//           backgroundColor: Colors.black,
//           // opacity: 0.5,
//           // blurEffect: true,
//           isFloating: true,
//           elevation: 5,
//           selectedColor: Colors.yellow, 
//           borderRadius: const Radius.circular(20), 
//           scaleCurve: Curves.bounceInOut,
//           strokeColor: Colors.blue,
//           bubbleCurve: Curves.decelerate,
//           unSelectedColor: Colors.grey[600],
//           currentIndex: currentindex,
//          // buttonBackgroundColor: Colors.orangeAccent,
//          // height: 60,
//          // index: index, 
//          // animationCurve: Curves.easeInOut, //animationDuration: const Duration(milliseconds: 500),
//           items: items, 
//           onTap:(currentindex) => setState(() =>
//             this.currentindex = currentindex
//           ), 
//           ), 
//         ),
//     ); 
    
//   }
// }