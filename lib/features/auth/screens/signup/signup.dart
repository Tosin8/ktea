import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      
        actions: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.close)),  
        SizedBox(width: 20),   
        ],
        
      ),
      body: SignUpBody());
  }
}