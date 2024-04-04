import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/features/auth/screens/otp/otp.dart';
import 'package:ktea/utils/nav_bar.dart';

class SignUpBtn extends StatelessWidget {
  const SignUpBtn({
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
        'CONTINUE', 
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