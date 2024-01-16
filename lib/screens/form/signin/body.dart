import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/components/constants.dart';

import '../signup/signup.dart';
import '../widget.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity, 
        child: SingleChildScrollView(
          child: Column(
            children: [
              //SizedBox(height: 8), 
              const Text('Welcome Back',
              style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
              const SizedBox(height: 6),  
              const Text('Sign in with your email and password \nor continue with your social media account',style: TextStyle(fontSize: 16), 
              textAlign: TextAlign.center,), 
              const SizedBox(height: 30), 
              const AppForm(),
                const SizedBox(height: 30), 
                const Text('- OR USE - ') , 
                const SizedBox(height: 8), 
                const SocialCard(),
                GestureDetector(
                  onTap: (){
                    Get.to(const SignUp());
                  },
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

