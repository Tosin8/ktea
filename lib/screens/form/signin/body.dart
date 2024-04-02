import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../signup/signup.dart';
import '../widget.dart';
import 'signin_widget.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});



  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: double.infinity, 
        child: SingleChildScrollView(
          child: FadeInRight(
            duration: Duration(milliseconds: 300),
            child: Padding( 
              padding: const EdgeInsets.only(left: 18),
              child: Column(
               
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8), 
                  Text('Welcome Back!',
                  style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 24, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 6),  
                  const Text('Kindly sign in to continue',
                  style: TextStyle(fontSize: 15, color: Colors.grey), 
                ), 
                  const SizedBox(height: 30), 
                  const SignInForm(),
                    const SizedBox(height: 30), 
                    const Text('- OR USE - ') , 
                    const SizedBox(height: 15), 
                    const SocialCard(),
                    SizedBox(height: 20), 
                    GestureDetector(
                      onTap: () =>
                        Get.to(const SignUp()), 
                      
                      child: const Text('Create Account', 
                      style: TextStyle(
                        color: Colors.orange,fontWeight: FontWeight.w600,
                      fontSize: 18, decoration: TextDecoration.underline, decorationColor: Colors.orange)),
                    ) , 
                ],
                
              ),
            ),
          ),
        ),
      );
  
  }
}

