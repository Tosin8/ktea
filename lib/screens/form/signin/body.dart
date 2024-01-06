import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Text('Welcome Back',
          style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),), 
          Text('Sign in with your email and password \nor continue with your social media account', 
          textAlign: TextAlign.center,)
        ],
        
      ),
    );
  }
}