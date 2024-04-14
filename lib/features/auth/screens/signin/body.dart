import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ktea/features/auth/screens/signup/signup.dart';

import '../widget.dart';
import 'signin_form.dart';


class SignInBody extends StatelessWidget {
  const SignInBody({super.key});



  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        width: double.infinity, 
        child: SingleChildScrollView(
          child: FadeInRight(
            duration: const Duration(milliseconds: 300),
            child: Padding( 
              padding: const EdgeInsets.only(left: 18),
              child: Column(
               
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Header
                  const SizedBox(height: 8), 
                  Text('Welcome Back!',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8), fontSize: 24, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 6),  
                  const Text('Kindly sign in to continue',
                  style: TextStyle(fontSize: 15, color: Colors.grey), 
                ), 
                  const SizedBox(height: 30), 

                  // Form Body
                  const SignInForm(),
                    const SizedBox(height: 30), 

                    // Footer
                    const Center(
                      child: Text('- OR USE - ', style: TextStyle(color: Colors.grey),)) , 
                    const SizedBox(height: 15), 
                    const SocialCard(),
                    const SizedBox(height: 100), 
                   
                   // footer text
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account? ',
                       style: TextStyle(color: Colors.grey),), 
                      GestureDetector( 
                        onTap: (){
                          Get.to(() => SignUp()); 
                        },
                        child: const Text('Sign Up', 
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      )
                    ],
                   )
                    
                ],
                
              ),
            ),
          ),
        ),
      );
  
  }
}

