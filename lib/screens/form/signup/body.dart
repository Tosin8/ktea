import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
          duration: Duration(milliseconds: 300),
          child: Column(
            children: [
              Text('Register Account', style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 24, fontWeight: FontWeight.bold),), 
              const SizedBox(height: 6), 
              Text('Complete your details or continue \nwith social media', 
              
              textAlign: TextAlign.center,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
            ],
          )),
      ),
     
      
    );
  }
}