import 'package:flutter/material.dart';

import '../widget.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});



  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SizedBox(
        width: double.infinity, 
        child: SingleChildScrollView(
          child: Column(
            children: [
              //SizedBox(height: 8), 
              Text('Welcome Back',
              style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
              SizedBox(height: 6),  
              Text('Sign in with your email and password \nor continue with your social media account',style: TextStyle(fontSize: 16), 
              textAlign: TextAlign.center,), 
              SizedBox(height: 30), 
              AppForm(),
                SizedBox(height: 40), 
                Text('- OR USE - ') , 
                SizedBox(height: 10), 
                SocialCard(),
                //createAccount(), 
            ],
            
          ),
        ),
      ),
    );
  }
}

