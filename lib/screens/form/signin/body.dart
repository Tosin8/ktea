import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SizedBox(
        width: double.infinity, 
        child: Column(
          children: [
            Text('Welcome Back',
            style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
            SizedBox(height: 6),  
            Text('Sign in with your email and password \nor continue with your social media account',style: TextStyle(fontSize: 16), 
            textAlign: TextAlign.center,)
          ],
          
        ),
      ),
    );
  }
}

class Form extends StatefulWidget {
  const Form({super.key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}