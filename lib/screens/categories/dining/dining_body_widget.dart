import 'package:flutter/material.dart';
import 'package:get/get.dart';


class appBar extends StatelessWidget {
  const appBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding( padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          GestureDetector(
            onTap: () {
              Get.back(); 
            },
            child: const Icon(Icons.arrow_back_ios, color: Colors.white,)), 
          const SizedBox(width: 260), 
           Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search_outlined, color: Colors.white,),
                 
//                 IconButton(onPressed: (){
// showMaterialModalBottomSheet(
// context: context,
// builder: (context) => Container(
//   color: Colors.white, 
//   child: ShoppingCartWidget(),
// ),
// );
//                 }, 
//                 icon: Icon(Icons.shopping_cart))
                ],
                ),
                )
        ]
      ),
    );
  }
}



class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
     
    );
  }
}


class DiningCategoryTab extends StatelessWidget {
  const DiningCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding( 
      padding: EdgeInsets.only(left: 0),
      
      child: DefaultTabController(
        initialIndex: 0, 
        animationDuration: Duration(milliseconds: 500), 
        length: 4,
        child: TabBar(
          padding: EdgeInsets.only(left: 2),
          indicatorColor: Colors.orange,
          labelColor: Colors.orange,
         // labelPadding: EdgeInsets.all(8),
          // onTap: ( ) {
            
          // },
         isScrollable: true,
           tabs: [
            Tab(child: Text('Most Popular'),), 
             Tab(child: Text('Furnitures'),),  
             Tab(child: Text('Dishware'),), 
              Tab(child: Text('Complementary'),), 
           ],),
        
      ),
    );
  }
}