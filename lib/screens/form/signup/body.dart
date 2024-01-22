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
              Text('Sign Up', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),)
            ],
          )),
      ),
     
      
    );
  }
}