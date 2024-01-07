import 'package:flutter/material.dart';

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
            const SizedBox(height: 40), 
             DefaultButton(textBtn: 'Continue', press: () {  },),
              const SizedBox(height: 40), 
              const Text('- OR USE - ') , 
              const SizedBox(height: 20), 
              Row(
                children: [
                  Container(
                    height: 40, width: 40,
                    decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6) , 
            blurRadius: 10, 
            color: const Color(0xffb0b0b0).withOpacity(0.2), 
          )
        ]
      ),
      child: TextButton(onPressed: () {  },
      child: const Icon(Icons.abc))
      ,
                  )
                ],
              )
          ],
          
        ),
      ),
    );
  }
}

