import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forgot_body.dart';

class ForgotPwd extends StatefulWidget {
  const ForgotPwd({super.key});

  @override
  State<ForgotPwd> createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back_ios)),
        title: Text('Forgot Password', 
        style: TextStyle(color: Colors.grey[800], fontSize: 20),), 
      centerTitle: true,
      ),
      body: const ForgotPwdBody(),

    );
  }
}