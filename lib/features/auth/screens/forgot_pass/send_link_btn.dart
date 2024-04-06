import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/features/auth/screens/forgot_pass/otp/otp.dart';
import 'package:ktea/utils/nav_bar.dart';

class SendLinkBtn extends StatelessWidget {
  const SendLinkBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {
        Get.to(() => const OTP());
      },
      child: Container(width: 350, height: 50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.orange), 
      child: const Align(
        child: Text(
        'SEND CODE',  
        style: TextStyle(
          color: Colors.white, 
          fontSize: 16, 
          fontWeight: FontWeight.w500)
          ),
          ),
          ),
    );
  }
}