import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:ktea/components/app_widgets.dart';


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
        

          
          
       
        
        ]
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
              padding: EdgeInsets.all(8),
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

