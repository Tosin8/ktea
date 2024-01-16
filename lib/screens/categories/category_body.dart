import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
          children:  const [
            SizedBox(height: 10), 
          Text('Collection',
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
           SizedBox(height: 10), 
           CollectionsWidget(imagebkg: 'assets/images/collections/1.jpg', 
           maintitle: 'Modern Dining', 
           subtitle: 'Classic yet contemporary,\nwith a timeless quality.',
            mainTime: 500, 
            delayTime: 0,
            ),
            SizedBox(height: 10), 
            CollectionsWidget(imagebkg: 'assets/images/collections/1.jpg', 
           maintitle: 'Modern Dining', 
           subtitle: 'Classic yet contemporary,\nwith a timeless quality.',
            mainTime: 500, 
            delayTime: 0,
            ), 
            SizedBox(height: 10), 
            CollectionsWidget(imagebkg: 'assets/images/collections/1.jpg', 
           maintitle: 'Modern Dining', 
           subtitle: 'Classic yet contemporary,\nwith a timeless quality.',
            mainTime: 500, 
            delayTime: 0,
            ),  
        ]));
  }
}

class CollectionsWidget extends StatelessWidget {
  const CollectionsWidget({
    super.key, required this.imagebkg, required this.maintitle, required this.subtitle, required this.mainTime, required this.delayTime,
  });

final String imagebkg; 
final String maintitle; 
final String subtitle; 
final int mainTime; 
final int delayTime; 
  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: Duration(milliseconds: mainTime), 
      delay: Duration(milliseconds: delayTime),
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
    );
  }
}
