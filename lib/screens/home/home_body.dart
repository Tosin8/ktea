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
popularProductCard()
        
        ]
         )
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
      height: 90, width: 300, 
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
                    popularProducts[0].imageUrl, 
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
                    popularProducts[0].title, 
                    style: const TextStyle(
                      color: Colors.black, 
                    fontWeight: FontWeight.bold, fontSize: 20),), 
                    SizedBox(height: 6,), 
                    Row(
                      children: [
                        Text(popularProducts[0].category, style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.6)),), 
                        Text(popularProducts[0].price.toString(), style: TextStyle(fontSize: 18, 
                        fontWeight: FontWeight.w600),), 
                      ],
                    )
                ],
               ),
             )
          
        ],
      ),
    );
  }
}



