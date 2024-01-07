import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity, 
        child: Column(
          children: [
            const Text('Welcome Back',
            style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
            const SizedBox(height: 6),  
            const Text('Sign in with your email and password \nor continue with your social media account',style: TextStyle(fontSize: 16), 
            textAlign: TextAlign.center,), 
            const SizedBox(height: 30), 
            const AppForm(),
            const SizedBox(height: 10),  
             const Padding(
              padding: EdgeInsets.only(left: 15),
              child: checkBox()), 
              
            const SizedBox(height: 30), 
             DefaultButton(textBtn: 'Continue', press: () {  },),
              const SizedBox(height: 40), 
              const Text('- OR USE - ') , 
              const SizedBox(height: 10), 
              const SocialCard(),
              const Text('Create Account', 
              style: TextStyle(
                fontSize: 18,
                color: Colors.orange,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,), 
               ), 
          ],
          
        ),
      ),
    );
  }
}

class checkBox extends StatelessWidget {
  const checkBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
         Checkbox(
           value: false,
            onChanged: (bool? value) {  },
         ), 
         const Text('Remember me'),
         const SizedBox(width: 100), 
         Expanded(child: GestureDetector(
           onTap: () {
             
           },
           child: const Text('Forgot Password',
           style: TextStyle(
             decoration: TextDecoration.underline
           ),)))
       ],
     );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(''); 
          },
          child: Container(
            height: 80, width: 80,
                        
                
                child: Image.asset('assets/icons/social/fb-logo.png')),
        ),
          
         GestureDetector(
          onTap: () {
            Get.to(''); 
          },
          child: Container(
            height: 80, width: 80,
                        
                
                child: Image.asset('assets/icons/social/google-logo.png')),
        ),
          
      GestureDetector(
          onTap: () {
            Get.to(''); 
          },
          child: Container(
            height: 80, width: 80,
                        
                
                child: Image.asset('assets/icons/social/apple-logo.png')),
        ),
          
     
      ],
    );
  }
}

