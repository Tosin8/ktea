import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktea/components/app_widgets.dart';
import 'package:ktea/screens/extended_screen/notification.dart';
import'package:badges/badges.dart' as badges;


import 'home_widget.dart';

class Home_Body extends StatefulWidget {
  const Home_Body({super.key});

  @override
  State<Home_Body> createState() => _Home_BodyState();
}

class _Home_BodyState extends State<Home_Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
    
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView(children: [
          const SizedBox(height: 15), 
          Padding( 
            padding: const EdgeInsets.only(
              left: 8, 
              right: 10),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
              const Icon(Icons.menu_rounded), 
            GestureDetector(
                onTap: () {
                  Get.to(const Notifications()); 
                },
                child: 
                badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -10, end: -5),
                  badgeContent: const Text('0'), 
                  showBadge: true,
                              badgeAnimation: const badges.BadgeAnimation.scale(animationDuration: Duration(milliseconds: 4500), 
                              curve: Curves.easeIn,
                              loopAnimation: true),
                  child:  const Icon(Icons.notifications, 
                  
                              color: Colors.black,),
                              badgeStyle: badges.BadgeStyle(badgeColor: Colors.grey.shade300),
            
                )
                ), 
            ],),
          ),
          const SizedBox(height: 10),  
          FadeIn(
            child: Text(
              ' Unique Style \n Home Product',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withOpacity(0.7)),
            ),
          ),
          const SizedBox(height: 10),
          const SearchBarWidget(),
          const SizedBox(height: 20), 
           titleCategory(
            title: 'New Arrival',
            press: (){},
            ), 
          const SizedBox(height: 10),
       
        

          
       
        ] )))); 
  }
}

