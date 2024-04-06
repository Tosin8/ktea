import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ktea/features/auth/screens/forgot_pass/forgot.dart';
import 'package:ktea/features/auth/screens/forgot_pass/option_reset.dart';

class fgtPassword extends StatelessWidget {
  const fgtPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
            onPressed: (){
            showModalBottomSheet(
              context: context,
               builder: (context) => Container(
                // width: MediaQuery.of(context).size.width,
                width: 600,
              padding: const EdgeInsets.all(30), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
const Text('Make Selection!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
), 
const SizedBox(height: 5,), 
const Text('Select one of the options given below to\nreset your password', 
style: TextStyle(
  color: Colors.black, 
  fontSize: 14),
  ), 
  const SizedBox(height: 30.0,), 
  OptionResetBtn(
    btnIcon: Iconsax.sms,
     title: 'E-Mail', 
     subTitle: 'Reset via E-Mail Verification',
     onTap: () {
      Get.to(() => const ForgotPwd());
     },
     ), 
const SizedBox(height: 20,), 
     OptionResetBtn(
    btnIcon: Iconsax.mobile,
     title: 'Phone', 
     subTitle: 'Reset via Phone Verification',
     onTap: () {},
     ),
                ],
              ),
            )); 
          }, child: 
          Text('Forgot Password?', 
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
           fontSize: 14),)
          ); 
  }
}

