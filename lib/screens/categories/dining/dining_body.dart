import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dining_body_widget.dart';


// class _DiningScreenState extends State<DiningScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: const [
//           // Hero(
//           //   tag: 'dining',
//           //   child: 
//           header(),
//           SizedBox(height: 5), 

//          DiningCategoryTab() ,
//     ] ) 
     
//     );
//   }
// }

class DiningScreen extends StatefulWidget {
  const DiningScreen({super.key});

  @override
  State<DiningScreen> createState() => _DiningScreenState();
}

class _DiningScreenState extends State<DiningScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      body: CustomScrollView(slivers: [
        SliverAppBar(
         
          expandedHeight: 220, 
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset('assets/images/collections/1.jpg', 
            fit: BoxFit.cover,),
            
          ),
          leading:  Padding(padding: EdgeInsets.only(left: 18), child: IconButton(onPressed: (){
            Get.back();

          }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded, color: Colors.white,)), 
             IconButton(onPressed: (){}, icon: const Icon(Icons.notifications, color: Colors.white,))
          ],
          
        ), 
        SliverToBoxAdapter(
          child: DiningInfo(),
        )
      ],)
    );
  }
}


class DiningInfo extends StatefulWidget {
  const DiningInfo({super.key});

  @override
  State<DiningInfo> createState() => _DiningInfoState();
}

class _DiningInfoState extends State<DiningInfo> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


     