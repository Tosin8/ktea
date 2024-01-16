import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/screens/extended_screen/category_details/dining/dining_body.dart';

import 'category_widget.dart';

class Category_Body extends StatefulWidget {
  const Category_Body({super.key});

  @override
  State<Category_Body> createState() => _Category_BodyState();
}

class _Category_BodyState extends State<Category_Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10
      ),
        child: ListView(
          children:   [
            const SizedBox(height: 10), 
          const Text('Collection',
           style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),), 
          // HomeDecoration(),
          // SizedBox(height: 20),
          // Sofa(),
          // SizedBox(height: 20),
          // TableP(),
          // SizedBox(height: 20),
          // Cabinet(),
          // SizedBox(height: 20),
           //Light(),
           const SizedBox(height: 10), 
           CollectionsWidget(
            imagebkg: 'assets/images/collections/1.jpg', 
           maintitle: 'Modern Dining', 
           subtitle: 'Classic yet contemporary,\nwith a timeless quality.',
            mainTime: 500, 
            delayTime: 0, 
            press: () { 
              Get.to(DiningScreen()); 
             }, herotag: 'dining',
            ),
            const SizedBox(height: 10), 
            CollectionsWidget(imagebkg: 'assets/images/collections/2.jpg', 
           maintitle: 'Classic Furnitures', 
           subtitle: 'Best worth of it at \nthe peak of it\'s of excellence.',
            mainTime: 500, 
            delayTime: 500, press: () {  }, herotag: '',
            ), 
            const SizedBox(height: 10), 
            CollectionsWidget(imagebkg: 'assets/images/collections/3.jpg', 
           maintitle: 'Modern Dining', 
           subtitle: 'Classic yet contemporary,\nwith a timeless quality.',
            mainTime: 500, 
            delayTime: 1000, press: () {  }, herotag: '',
            ), 
            const SizedBox(height: 10), 
            CollectionsWidget(imagebkg: 'assets/images/collections/3.jpg', 
           maintitle: 'Elegant Lights', 
           subtitle: 'Classic yet contemporary,\nwith a timeless quality.',
            mainTime: 500, 
            delayTime: 1500, press: () {  }, herotag: '',
            ), 
             const SizedBox(height: 10), 
            CollectionsWidget(imagebkg: 'assets/images/collections/3.jpg', 
           maintitle: 'Cabinet', 
           subtitle: 'Classic yet contemporary,\nwith a timeless quality.',
            mainTime: 500, 
            delayTime: 2000, press: () {  }, herotag: '',
            ), 
        ]));
  }
}

class CollectionsWidget extends StatelessWidget {
  const CollectionsWidget({
    super.key, required this.imagebkg, required this.maintitle, required this.subtitle, required this.mainTime, required this.delayTime, required this.press, required this.herotag,
  });

final String imagebkg, herotag; 
final String maintitle; 
final String subtitle; 
final int mainTime; 
final int delayTime; 
final GestureTapCallback press; 

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: Duration(milliseconds: mainTime), 
      delay: Duration(milliseconds: delayTime),
      child: GestureDetector(
        onTap: () {
           press; 
        },
        child: Hero(
          tag: herotag,
          child: Container(
           height: 250,
           width: 300,
           decoration:  BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             image:  DecorationImage(
               image: AssetImage(imagebkg),
               fit: BoxFit.cover,)
           ),
           child: Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               gradient: LinearGradient(
                 colors: [
                   Colors.black.withOpacity(0.5),  
                   Colors.black.withOpacity(0.2), 
                   
                   
                   ], begin: Alignment.bottomRight )
             ),
             child: Padding(
               padding: const EdgeInsets.all(10),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(maintitle, 
                   style: const TextStyle(
                     color: Colors.white, 
                   fontSize: 26,
                    fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 12), 
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(subtitle, 
                       style: const TextStyle(
                         color: Colors.white, 
                         fontSize: 15, fontWeight: FontWeight.w400),
                         ),
                         const Icon(Icons.arrow_forward_ios, color: Colors.white,)
                     ],
                    ), const SizedBox(height: 20,),  
               
                 ],
               ),
             ),
           ),
          ),
        ),
      ),
    );
  }
}
