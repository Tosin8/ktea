import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
              height: 200, width: 300,
              child: Lottie.asset(successImage),
            ),
            const SizedBox(height: 30,),  
            Text('Yah!,your account is now created', style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 16, fontWeight: FontWeight.w400),),
            const SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only(left:60.0),
              child: Row(
                children: [
                Text('Please', 
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6), fontSize: 16, fontWeight: FontWeight.w400),), const SizedBox(width: 5,), 
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignIn());
                  },
                  
                  child: const Text('login', style: TextStyle(color: Colors.orange, fontSize: 16, fontWeight: FontWeight.bold),)), const SizedBox(width: 5,), 
                Text('to continue', style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 16, fontWeight: FontWeight.w400),)
              ],),
            ), 
          
            const SizedBox(height: 30,),
           
          
          ],
        ),
      ),
    );
  }
}