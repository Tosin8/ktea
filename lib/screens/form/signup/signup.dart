import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'body.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Get.back(); 
          }, 
          icon: Icon(Icons.arrow_back_ios)),
        
        title: Text('Sign Up'), 
        centerTitle: true,
      ),
      body: SignUpBody());
  }
}