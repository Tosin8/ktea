import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'otp_body.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        automaticallyImplyLeading: false,
        
        actions: [
      IconButton(onPressed: (){
        Get.back(); 
      }, icon: Icon(Iconsax.close_circle)) , 
          SizedBox(width: 20), 
        ],),
        body: OTPBody(),
    );
  }
}