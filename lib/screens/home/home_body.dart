import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';

import 'package:ktea/components/app_widgets.dart';
import 'package:ktea/model/popular.dart';


import '../../model/new_arrival.dart';
import '../../model/sofa.dart';
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
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      ...List.generate(popularProducts.length, (index) =>   Padding(
        padding: const EdgeInsets.all(8.0),
        child: popularProductCard(popularProducts: popularProducts[index],),
      ),), 
     
    ],
  ),
), 
const SizedBox(height: 10,), 

 const productTitleCategory(title: 'Sofa',), 
 sofaProductCard(
   sofas: sofas[index],
 )
        
        ]
         )
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
     height: 300,
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
           Text(sofas.price,
            style: const TextStyle(fontSize: 18,
             fontWeight: FontWeight.w400),) 
           
       ]
     ),
    );
  }
}




