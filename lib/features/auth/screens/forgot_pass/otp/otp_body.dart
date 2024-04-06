import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:ktea/features/auth/controllers/otp_controller.dart';
import 'package:ktea/features/auth/screens/forgot_pass/otp/otp_btn.dart';


class OTPBody extends StatefulWidget {
  const OTPBody({super.key});

  @override
  State<OTPBody> createState() => _OTPBodyState();
}

class _OTPBodyState extends State<OTPBody> {
  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController()); 
    var otp; 

    return SizedBox( 
      width: double.infinity,
      child: SingleChildScrollView(
        child: FadeInRight(child: Column(children: [
          const SizedBox(height: 60), 
          Text('OTP Verification', style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 24, fontWeight: FontWeight.bold),
        ), 
        const SizedBox(height: 6,), 
        const Text("We've sent your code to your email address "), 
        const SizedBox(height: 10), 
        //const buildTimer(), 
        const SizedBox(height: 100), 
        //const OTPForm(), 
        OtpTextField(
          numberOfFields: 6,
          fillColor: Colors.black.withOpacity(0.1),
          filled: true,
          onSubmit: (code) {
           //  print('OTP is => $code'); 
           otp = code; 
           OTPController.instance.verifyOTP(otp);
          },
        ), 
        const SizedBox(height: 80,), 
       const OtpBtn(),
        const SizedBox(height: 20,), 
        const Text('Didn\'t receive the code? ', style: TextStyle(color: Colors.grey),),
        
        
         
        const SizedBox(height: 10,),

        GestureDetector(
          onTap: (){},
          child: const Text('Resend OTP Code', style: TextStyle(color: Colors.orange, decoration: TextDecoration.underline, decorationColor: Colors.orange), ))
        ],)),
      ),
    );
  }

  
  }
