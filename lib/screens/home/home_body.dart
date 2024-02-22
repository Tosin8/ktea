import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';

import 'package:ktea/components/app_widgets.dart';


import 'home_widget.dart';
class Home_Body extends StatefulWidget {
  const Home_Body({super.key});

  @override
  State<Home_Body> createState() => _Home_BodyState();
}

class _Home_BodyState extends State<Home_Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: 
        ListView(
          children: [
          const SizedBox(height: 15), 
          const Padding( 
            padding: EdgeInsets.only(
              left: 8, 
              right: 10),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
      
            notifcation_bell(), 
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
      
        
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
     
             Container(
             child: ListView.builder(

             New news = news[0];
             itemCount: news.lenth,),)
        
    ],
  ),
), 
        

          
          
       
        
        ]
         )
         ); 
  }
}

class NewArrivalProductCard extends StatelessWidget {
   NewArrivalProductCard({
    required this.imageUrl, 
    required this.title, 
    required this.category,
     required this.price, 
    super.key,
  });

final String imageUrl; 
final String title;
final String category; 
final int price; 

  @override
  Widget build(BuildContext context) {
    return Container(
           height: 320, 
           width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), 
                      image: DecorationImage(image: AssetImage(imageUrl),
                       fit: BoxFit.cover)
                  
                    ),
                    width: 180,  
                    height: 200,
                    child: const Align(
                      alignment: Alignment.topRight,
                      child: Row(
                     
                        children: [
                          Icon(Icons.favorite_border_outlined,
                          color:
                           Colors.black,
                            size: 30,),
                        ],
                      ),
                    ),
                   ),
                ), 
                const SizedBox(height: 10,), 
                 Text(title, 
                style: const TextStyle(
                  fontSize: 20,
                   fontWeight: FontWeight.w500),
                   ), 
                   const SizedBox(height: 2,), 
             Text(category, 
                style: const TextStyle(
                  fontSize: 18,
                   fontWeight: FontWeight.w300),
                   ),
                   const SizedBox(height: 2,), 
                 Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(price.toString(), 
                    style: const TextStyle(
                      fontSize: 20,
                       fontWeight: FontWeight.w500),
                       ),
                       const Icon(Icons.add_circle, size: 30,)
                  ],
                ),  
              ],
            ),
           );
  }
}

