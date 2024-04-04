import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ktea/features/auth/screens/widget.dart';

import 'signup_widget.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, 
      child: SingleChildScrollView(
        child: FadeInRight(
          duration: const Duration(milliseconds: 300),
          child: Column(
            children: [
              Text('Register Account', style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 24, fontWeight: FontWeight.bold),), 
              const SizedBox(height: 6), 
              const Text('Complete your details or continue \nwith social media', 
              
              textAlign: TextAlign.center,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
              const SizedBox(height: 50), 
              const AppForm1(), 
              const SizedBox(height: 30), 
              const SocialCard(),
              const SizedBox(height: 20), 
              const Column(
                children: [
                  Text('By continuing with the registration, it clearly \nshows you have agree with our', style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                  Text('Terms and Conditions', 
                  style: TextStyle(color: Colors.orangeAccent,
                    decoration: TextDecoration.underline, decorationColor: Colors.orangeAccent
                  ),)
                ],
              )
            ],
          )),
      ),
     
      
    );
  }
}