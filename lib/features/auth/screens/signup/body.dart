import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:ktea/features/auth/screens/widget.dart';

import 'header.dart';
import 'signup_form.dart';


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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              signupheader(), 
              SizedBox(height: 20), 
              SignUpForm(), 
              //const AppForm1(), 
              SizedBox(height: 30), 
              SocialCard(),
              SizedBox(height: 20), 
              Center(
          
                child: 
                    
                    Text('Terms and Conditions', 
                    style: TextStyle(color: Colors.orangeAccent,
                    
                    ),)
                  
              )
            ],
          )),
      ),
     
      
    );
  }
}

