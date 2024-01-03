import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with SingleTickerProviderStateMixin{

  bool isLastPage = false; 

  final List<dynamic> _furnitures = [

    {
      'title': 'Your Home\nYour Story', 
      'sub_title': 'Spaces for Stories:\nDistinctly designed for lounging in style\nWhere inspiration lives.', 
      'image': 'assets/images/splash/1.jpg', 
    }, 

    {
      'title': 'Dream It\nStyle It', 
      'sub_title': 'Bedroom Oasis:\nTransform your private sanctuary\nBedrooms built around your lifestyle', 
      'image': 'assets/images/splash/2.jpg', 
    }, 
    {
      'title': 'Unique as \nYour Recipes', 
      'sub_title': 'Custom Kitchens:\nYour Culinary Canvas\nWhere food memories are made. ', 
      'image': 'assets/images/splash/3.jpg', 
    }
  ]; 


late final AnimationController _controller = AnimationController (vsync: this, 
duration: const Duration(seconds: 20), 
)..repeat(reverse: true);


late final Animation<double> _animation = Tween<double> (
  begin: 1.0,
   end: 1.5).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn)); 

   @override
  void dispose() {
    
    super.dispose();
    _controller.dispose(); 

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: PageView.builder(
        onPageChanged: (int index) {
          _controller.value = 0.0; 
          _controller.forward(); 
          setState(() {
            isLastPage = index == 2; 
          });
        },

        itemCount: _furnitures.length,
        controller: PageController(viewportFraction: 1.0),
        itemBuilder: (context, index) {
          return Container(
child: Stack (
  children: [
    Container(
      height: MediaQuery.of(context).size.height, 
      width: MediaQuery.of(context).size.height,
      clipBehavior: Clip.hardEdge, 
      decoration: const BoxDecoration(
      
      ),
      child: ScaleTransition(scale: _animation, 
      child: Image.asset(_furnitures[index]['image'], 
      fit: BoxFit.cover, 
      ),),
    ), 
    const Positioned(
      top: 45,
      left: 165, 
      child: Text('KTEA', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20, color: Colors.white),), 
    ), 
    Positioned(
      bottom: 0, 

      child: Container(
        padding: const EdgeInsets.all(20), 
        width: MediaQuery.of(context).size.width, 
        height: MediaQuery.of(context).size.height, 
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight, 
            colors: [
              Colors.black.withOpacity(0.9), 
              Colors.black.withOpacity(0.8), 
              Colors.black.withOpacity(0.2), 
              Colors.black.withOpacity(0.1), 
            ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInDown(
              duration: const Duration(milliseconds: 500),
              child: Text(_furnitures[index]['title'], 
              style: const TextStyle(
                color: Colors.white ,
                fontSize: 35, 
                fontWeight: FontWeight.bold),
                ),
            ),
            const SizedBox(height: 10), 
            FadeInLeft(
              delay: const Duration(milliseconds: 100), 
              duration: const Duration(milliseconds: 800),
              child: Text(_furnitures[index]['sub_title'], 
              style: TextStyle(color: Colors.grey.shade400, fontSize: 18),),
            ), 
            const SizedBox(height: 50), 
            FadeInRight(
              delay: const Duration(milliseconds: 100), 
              duration: const Duration(milliseconds: 1000),
              child: Align(
                alignment: Alignment.bottomRight, 
                child: isLastPage ? MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                  ), 
                  
                  onPressed: (){}, 
                  color: Colors.orange, 
                  padding: const EdgeInsets.only(right: 5, left: 30, top: 5, bottom: 5), 
                  child: Container(height: 40, width: MediaQuery.of(context).size.width * 0.4, 
                  child: Row(
                    children: [
                      const Text('Get Started', 
                      style: TextStyle(color: Colors.black, fontSize: 16, 
                      ),), 
                      const Spacer(), 
                      Container(
                        padding: const EdgeInsets.all(8), 
                        decoration: BoxDecoration(color: Colors.orange.shade300, borderRadius: BorderRadius.circular(40)),child: Icon(Icons.arrow_forward_ios, color: Colors.orange.shade100,),
                      )
                    ],
                  ),),): 
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                         // _controller.jumpToPage(2); 
                        }, child: const Text('Skip',
                         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.orange),)), 
                        TextButton(onPressed: (){}, child: const Text('Next', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.orange),))
                      ],
                    ),
                  )
              )), 
              const SizedBox(height: 20,)
          ],
        ),
      ))
  ],)
          ); 
        })
    );
  }
}