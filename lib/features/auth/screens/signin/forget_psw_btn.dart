import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/features/auth/screens/forgot_pass/forgot.dart';

class fgtPassword extends StatelessWidget {
  const fgtPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Get.to(() => const ForgotPwd()); 
      },
      child: Text('Forgot Password? ',
       style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 14),),
    );
  }
}

