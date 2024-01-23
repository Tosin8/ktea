import 'package:flutter/material.dart';

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
        children: [
          // Hero(
          //   tag: 'dining',
          //   child: 
          Container(
              height: 300,
              width: double.infinity,
           decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/collections/1.jpg',),fit: BoxFit.cover 
              ),

            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient (
                  colors: [
                    Colors.black.withOpacity(0.5), Colors.black.withOpacity(0.2), 
                  ], begin: Alignment.bottomRight), 
                
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const appBar(), 
                  const SizedBox(height: 20), 
                  const Text('Modern Dining', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 12), 
                  const Text('Classic yet contemporary \n with a timeless quality', style: TextStyle(color: Colors.white, fontSize: 16),textAlign: TextAlign.center,
                  ), 
                  const SizedBox(height: 25), 
                  Container(
                    height: 50, width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12), 
                      
                       
                    ),
                    child: const Align(child: Text(' COLLECTION', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),)),
                  ) , 
                  const SizedBox(height: 30), 
                ],
              ),
            ),

          )
    ] ) 
     
    );
  }
}

