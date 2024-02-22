import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';

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
      Container(
        width: 200, 
        height: 300,
        child: Card(
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
          
                height: 200, width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      newProducts[0].imageUrl,
                      
                    ),
                     fit: BoxFit.cover)
                ),
              ), 
              const SizedBox(height: 10),
              Text(
                newProducts[0].title,style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black.withOpacity(0.7)),
                ),
              
              Text(newProducts[0].category, 
              style: const TextStyle(color: Colors.grey, fontSize: 15),) ,
               
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(newProducts[0].price.toString(), 
                  style: const TextStyle(
                    color: Colors.black, fontSize: 16),
                    ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Icon(Icons.add_circle, size: 30,),
                  )
                ],
              )
            ]
          ),
        ),
      )
        

          
          
       
        
        ]
         )
         ); 
  }
}

//