import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ktea/features/auth/screens/signin/signin.dart';
import 'package:ktea/utils/constants.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
        
          children: [
            const SizedBox(height: 100,), 
            Container(
              height: 300, width: 300,
             // child: SvgPicture.asset('assets/animation/illustrators/high_five.svg'),
             child: Lottie.asset('assets/animation/json/successful.json'),
            ),
            const SizedBox(height: 10,),  
            Text('Yah! Your Account is now Created Successfully',
             style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 20, fontWeight: FontWeight.bold),
             textAlign: TextAlign.center,
            ),
            const SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Text('Click the button below to log in',),
            ), 
          
            const SizedBox(height: 30,),
           
          GestureDetector( 
      onTap: () {
       Get.to(() =>  SignIn());
      }, 
      child: Container(
        width: 350, 
        height: 50,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), 
      color: Colors.orange), 
      child: const Align(
        child: Text(
        'CONTINUE', 
        style: TextStyle(
          color: Colors.white, 
          fontSize: 16, 
          fontWeight: FontWeight.w500)
          ),
          ),
          ),
    ), 

          ],
        ),
      ),
    );
  }
}