// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;


import 'dart:async';

import '../../model/new_arrival.dart';
import '../../model/popular.dart';
import '../../model/sofa.dart';
import '../extended_screen/notification.dart';

class App_Drawer extends StatelessWidget {
  const App_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // backgroundColor: kPrimaryColor,
        elevation: 20,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/drawer/1.jpg'),
                      fit: BoxFit.cover)),
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [App_Icon_White(), Model_User(), User_Details()],
              ),
            ),
            const SizedBox(height: 12),
            //const Screen_Nav(),
            const SizedBox(height: 170),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/copyright_20.png'),
                const Text('2023,Paradise Home Ltd')
              ],
            ),
          ],
        ));
  }
}

class User_Details extends StatelessWidget {
  const User_Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 115,
      left: 70,
      child: Row(
        children: [
          const Column(
            children: [
              Text(
                'Abigael Landi',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 10),
              ),
              Text('abig@gmail.com',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500))
            ],
          ),
          const SizedBox(width: 30),
          Row(
            children: [
              Image.asset('assets/icons/location_10.png'),
              const Text(
                'Lagos, Nigeria',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Model_User extends StatelessWidget {
  const Model_User({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 102,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/images/drawer/model.jpg'),
      ),
    );
  }
}

class App_Icon_White extends StatelessWidget {
  const App_Icon_White({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/icons/app_icon_white_25.png'),
            const Text(
              'PARADISE',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0),
            ),
            const Text(
              'HOME',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 3.90),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types

List<String> assets = [
  'assets/images/carousel/1.jpg',
  'assets/images/carousel/2.jpg',
  'assets/images/carousel/3.jpg',
  'assets/images/carousel/4.jpg',
];

var subText = const TextStyle(
  color: Colors.blueAccent,
  fontWeight: FontWeight.w500,
);

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({
    super.key,
  });

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
// creating autoplay timer and creating variables for pagecontroller.
  int myfirstcurrentIndex = 0;

  PageController myfirstpagecontroller =
      PageController(initialPage: 0, viewportFraction: 0.9);
  bool isreverse = false;

  myfirstFunction() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (myfirstcurrentIndex == 4) {
        isreverse = true;
      } else if (myfirstcurrentIndex == 0) {
        isreverse = false;
      }
      isreverse ? myfirstcurrentIndex-- : myfirstcurrentIndex++;
      myfirstpagecontroller.animateToPage(myfirstcurrentIndex,
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfirstFunction();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myfirstpagecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: PageView.builder(
          itemCount: assets.length,
          padEnds: false,
          pageSnapping: false,
          // reverse: true,
          physics: const BouncingScrollPhysics(),
          controller: myfirstpagecontroller,
          onPageChanged: (value) {
            myfirstcurrentIndex = value;
            setState(() {});
          },
          // controller: PageController(
          //   initialPage: 0,
          //   viewportFraction: 0.9,
          // ),
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.all(8),
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Image.asset(assets[index], fit: BoxFit.cover));
          }),
    );
  }
}


class titleCategory extends StatelessWidget {
 titleCategory({
   required this.title,
  required this.press, 
    super.key,
  });

String title; 
final GestureTapCallback press; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
       right: 10.0),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text(title, 
         style: const TextStyle(
           color: Colors.black,
           fontSize: 20, 
           fontWeight: FontWeight.w500),
           ), 
           GestureDetector(
             onTap: press ,
             child: const Text('View All', 
             style: TextStyle(
              color: Colors.blue,
               fontSize: 15),),
           ) , 
         
      ],
                ),
    );
  }
}


class notifcation_bell extends StatelessWidget {
  const notifcation_bell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        );
  }
}

class newArrivalProductCard extends StatelessWidget {
  const newArrivalProductCard({
    super.key, required this.newProducts,
  });

final New newProducts;
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
        
              height: 200, width: 200,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    newProducts.imageUrl,
                    
                  ),
                   fit: BoxFit.cover)
              ),
            ), 
            Container(
              padding: const EdgeInsets.all(8),
              width: 200, 
              decoration:  BoxDecoration( 
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4), 
                    blurRadius: 0.2,
                    spreadRadius: 0.1, 
                    offset: const Offset(1, 1)
                  )
                ],
                borderRadius:  const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
 Text(
              newProducts.title,style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black.withOpacity(0.7)),
              ),
              Text(newProducts.category, 
            style: const TextStyle(color: Colors.grey, fontSize: 15),) ,
               Row(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(newProducts.price.toString(), 
                style: const TextStyle(
                  color: Colors.black, fontSize: 16),
                  ),
                const SizedBox(width: 100),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: const Icon(Icons.add_circle, size: 30,),
                )
              ],
            )

                ],
                
              ),
            ), 
  
          ]
        );
      
    
  }
}

class popularProductCard extends StatelessWidget {
  const popularProductCard({
    super.key, required this.popularProducts,
  });

final Popular popularProducts; 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110, width: 310, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12, 
            offset: Offset(1, 1)
          ),
        ]
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: 80, width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    popularProducts.imageUrl, 
                  ), fit: BoxFit.cover, 
                )
              ),
             )),
             const SizedBox(width: 10),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    popularProducts.title, 
                    style: const TextStyle(
                      color: Colors.black, 
                    fontWeight: FontWeight.bold, fontSize: 20),), 
                   // SizedBox(height: 6,), 
                 
                        Text(popularProducts.category, style: TextStyle(fontSize: 18,
                         color: Colors.black.withOpacity(0.6)),), 
                        Text(popularProducts.price.toString(), style: const TextStyle(fontSize: 18, 
                        fontWeight: FontWeight.w600),), 
                    
                ],
               ),
             ),
             const SizedBox(width: 15,),  
             const Icon(Icons.add_circle, size: 35,)
          
        ],
      ),
    );
  }
}

class productTitleCategory extends StatelessWidget {
  const productTitleCategory({
    super.key, required this.title,
  });

final String title; 
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.all(10.0),
     child: Text(title,
     style: const TextStyle(
      fontSize: 20, 
      fontWeight: FontWeight.w500),),
    );
  }
}


class sofaProductCard extends StatelessWidget {
  const sofaProductCard({
    super.key, required this.sofas,
  });

final Sofa sofas; 
  @override
  Widget build(BuildContext context) {
    return Container(
    // height: 220,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           height: 150, width: 150,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
             
             image: DecorationImage(
               image: AssetImage(sofas.imgUrl),
                fit: BoxFit.cover),
           ),
           ), 
           const SizedBox(height: 10),
           Text(sofas.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
           ),
           Row(
            
             children: [
               Text(sofas.price,
                style: const TextStyle(fontSize: 18,
                 fontWeight: FontWeight.w400),), 
                 SizedBox(width: 80,), 
                 Icon(Icons.add_circle, size: 30)
             ],
           ) 
           
       ]
     ),
    );
  }
}




