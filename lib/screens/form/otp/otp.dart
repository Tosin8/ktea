import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'otp_body.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed:
        (){
         Get.back();
  }, 
         
          icon: Icon(Icons.arrow_back_ios)),
        title: Text('Sign Up', style: TextStyle(color: Colors.grey[800], fontSize: 20),),centerTitle: true,
        actions: [
          Text('3/3'), 
          SizedBox(width: 20), 
        ],),
        body: OTPBody(),
    );
  }
}