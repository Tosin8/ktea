// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';



import 'package:ktea/features/personalization/models/product_model/dining.dart';

import 'dining_body_widget.dart';

class DiningScreen extends StatefulWidget {
  const DiningScreen({super.key});

  @override
  State<DiningScreen> createState() => _DiningScreenState();
}

class _DiningScreenState extends State<DiningScreen> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
           const header(),
           const SizedBox(height: 5), 
           Expanded(
             child: GridView.builder(
             itemCount: diningProducts.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, 
              mainAxisSpacing: 2, crossAxisSpacing: 2, childAspectRatio: 1),
             itemBuilder: (context, index) {
               return diningProductsCard(
              diningProducts: diningProducts[index], 
                       );
             },
                       
                   ),
           ),
        
        ],
      )
    );
  }
}


class diningProductsCard extends StatelessWidget {
  const diningProductsCard({
    Key? key,
    required this.diningProducts,
  }) : super(key: key);

  final Dining diningProducts;

  @override
  Widget build(BuildContext context) {
    return  Card(
            elevation: 1,
             child: Container(
              height: 40, 
    width: 50, 
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(5), 
                image: DecorationImage(image: AssetImage(
                  diningProducts.imgUrl, 
                  
                ), 
                fit: BoxFit.cover, )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.2), 
                      Colors.transparent, 
                    ], 
                    begin: Alignment.bottomCenter, 
                    end: Alignment.centerRight, 
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_border, color: Colors.white,)
                      ],
                    ), 
                    const SizedBox(height: 20,), 
                    Text(diningProducts.title, 
                    style: const TextStyle(
                      color: Colors.white, 
                      fontSize: 23,
                       fontWeight: FontWeight.w500, 

                      )), 
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(diningProducts.price.toString(), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          const SizedBox(width: 100),
                          GestureDetector(
                            onTap: () {
                              
                            },
                            child: Container(
                              width: 40, height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle, 
                                color: Colors.black, 
                              ),
                              child: const Icon(Icons.add, size: 30,color: Colors.white,),
                            ),
                          )
                        ],
                      ), 
                      const SizedBox(height: 10,), 
                  ]
                ),
              ),
             ),
           );
  }
}
