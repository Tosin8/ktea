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
            child: Column(
              children: [
                SizedBox(height: 8), 
                Text('Welcome Back',
                style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 24, fontWeight: FontWeight.bold),),
                const SizedBox(height: 6),  
                const Text('Sign in with your email and password \nor continue with your social media account',style: TextStyle(fontSize: 16), 
                textAlign: TextAlign.center,), 
                const SizedBox(height: 30), 
                const AppForm(),
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
      );
  
  }
}

