import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:ktea/components/app_widgets.dart';
import 'package:ktea/model/popular.dart';


import '../../model/new_arrival.dart';
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
        ...List.generate(
          newProducts.length, 
          (index) =>   Padding(
            padding: const EdgeInsets.all(8.0),
            child: newArrivalProductCard(
              newProducts: newProducts[index],),
          ),)
         
       ],
     ),
   ),
        
const SizedBox(height: 10),
titleCategory(title: 'Popular', press: (){}),
const SizedBox(height: 10), 
Container(
  height: 120, width: 300, 
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12
      ),
    ]
  ),
  child: Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          height: 100, width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(
                popularProducts[0].imageUrl, 
              ), fit: BoxFit.cover, 
            )
          ),
         )),
         const SizedBox(width: 10),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
            children: [
              Text(
                popularProducts[0].title, 
                style: const TextStyle(
                  color: Colors.black, 
                fontWeight: FontWeight.bold, fontSize: 18),), 
                Row(
                  children: [
                    Text(popularProducts[0].category), 
                    Text(popularProducts[0].price.toString()), 
                  ],
                )
            ],
           ),
         )
      
    ],
  ),
)
        
        ]
         )
         ); 
  }
}



