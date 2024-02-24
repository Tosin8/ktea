import 'package:animate_do/animate_do.dart';


import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:ktea/components/app_widgets.dart';
import 'package:ktea/model/cabinet.dart';
import 'package:ktea/model/popular.dart';
import 'package:ktea/model/table.dart';


import '../../model/light.dart';
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
Expanded(child: StaggeredGrid.count(
  crossAxisCount: 2, 
  mainAxisSpacing: 2, 
  crossAxisSpacing: 2, 
  children: List.generate(sofas.length, (index) => 
  Padding(
    padding: const EdgeInsets.all(12),
    child: sofaProductCard(sofas: sofas[index])),
  )
  ),
  ),
  const SizedBox(height: 10,), 
 const productTitleCategory(title: 'Table',), 
 Expanded(child: StaggeredGrid.count(
  crossAxisCount: 2, 
  mainAxisSpacing: 2, 
  crossAxisSpacing: 2, 
  children: List.generate(tableProducts.length, (index) => 
  Padding(
    padding: const EdgeInsets.all(12),
    child: tableProductCard(tableProducts: tableProducts[index])),
  )
  ),
  ),

        const productTitleCategory(title: 'Light',), 
         Expanded(child: StaggeredGrid.count(
  crossAxisCount: 2, 
  mainAxisSpacing: 2, 
  crossAxisSpacing: 2, 
  children: List.generate(LightProducts.length, (index) => 
  Padding(
    padding: const EdgeInsets.all(12),
    child: lightProductCard(LightProducts: LightProducts[index])),
  )
  ),
  ),
 const productTitleCategory(title: 'Cabinet',), 
     Expanded(child: StaggeredGrid.count(
  crossAxisCount: 2, 
  mainAxisSpacing: 2, 
  crossAxisSpacing: 2, 
  children: List.generate(CabinetProducts.length, (index) => 
  Padding(
    padding: const EdgeInsets.all(12),
    child: cabinetProductCard(CabinetProducts: CabinetProducts[index])),
  )
  ),
  ),

        ]
         )
         ); 
  }
}

