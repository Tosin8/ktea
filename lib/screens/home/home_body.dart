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
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   iconTheme: const IconThemeData(
      //       color: Colors.blueAccent), 
      //       // for changing default color.
      //  // elevation: 0,
      //  // shadowColor: Colors.black,
      //  leading: Icon(Icons.menu, color: Colors.black,),
      //   actions: [
      //     GestureDetector(
      //         onTap: () {
      //           Get.to(const Notifications()); 
      //         },
      //         child: 
      //         badges.Badge(
      //           position: badges.BadgePosition.topEnd(top: -10, end: -5),
      //           badgeContent: const Text('0'), 
      //           showBadge: true,
      //                       badgeAnimation: const badges.BadgeAnimation.scale(animationDuration: Duration(milliseconds: 4500), 
      //                       curve: Curves.easeIn,
      //                       loopAnimation: true),
      //           child:  const Icon(Icons.notifications, 
                
      //                       color: Colors.black,),
      //                       badgeStyle: badges.BadgeStyle(badgeColor: Colors.grey.shade300),

      //         )
      //         ), 
      //         const SizedBox(width: 10), 
      //   ]
      //         ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView(children: [
          const SizedBox(height: 15), 
          Padding( padding: const EdgeInsets.only(left: 8, right: 10),
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
          SizedBox(height: 10),  
          Text(
            ' Unique Style \n Home Product',
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.7)),
          ),
          const SizedBox(height: 10),
          const SearchBarWidget(),
          const SizedBox(height: 10),
         
          //const CarouselSlider(),
          const SizedBox(height: 10),

          // home decoration.
          // const ProductHeader_Title(
          //   title: 'Home Decorations',
          // ),
          Text('Popular', style: TextStyle(color: Colors.black,fontSize: 20),), 
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard1(),
                SizedBox(width: 45),
                ItemCard2(),
              ]),
              SizedBox(height: 15),
              Row(
                children: [
                  ItemCard3(),
                  SizedBox(width: 45),
                  ItemCard4(),
                ],
              ),
            ]),
          ),
          const SizedBox(height: 18),
          const ProductHeader_Title(
            title: 'Sofa',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard5(),
                SizedBox(width: 45),
                ItemCard6(),
              ]),
              SizedBox(height: 15),
              Row(
                children: [
                  ItemCard7(),
                  SizedBox(width: 45),
                  ItemCard8(),
                ],
              ),
            ]),
          ),
          const SizedBox(height: 18),

          // table.
          const ProductHeader_Title(
            title: 'Table',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard9(),
                SizedBox(width: 45),
                // ItemCard10(),
              ]),
              SizedBox(height: 15),
              //  Row(
              //     children: [
              //       ItemCard11(),
              //       SizedBox(width: 45),
              //       ItemCard12(),
              //     ],
              //   ),
            ]),
          ),
          const SizedBox(height: 18),
          const ProductHeader_Title(
            title: 'Cabinet',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard1(),
                SizedBox(width: 45),
                ItemCard2(),
              ]),
              SizedBox(height: 15),
              Row(
                children: [
                  ItemCard3(),
                  SizedBox(width: 45),
                  ItemCard4(),
                ],
              ),
            ]),
          ),
          const SizedBox(height: 18),

          // Light Category
          const ProductHeader_Title(
            title: 'Light',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Column(children: [
              Row(children: [
                ItemCard1(),
                SizedBox(width: 45),
                ItemCard2(),
              ]),
              SizedBox(height: 15),
              Row(
                children: [
                  ItemCard3(),
                  SizedBox(width: 45),
                  ItemCard4(),
                ],
              ),
            ]),
          ),
          const SizedBox(height: 20),
        ]),
      ),
    ));
  }
}
