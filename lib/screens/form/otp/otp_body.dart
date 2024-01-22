import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'otp_widget.dart';

class OTPBody extends StatefulWidget {
  const OTPBody({super.key});

  @override
  State<OTPBody> createState() => _OTPBodyState();
}

class _OTPBodyState extends State<OTPBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      width: double.infinity,
      child: SingleChildScrollView(
        child: FadeInRight(child: Column(children: [
          const SizedBox(height: 20), 
          Text('OTP Verification', style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 24, fontWeight: FontWeight.bold),
        ), 
        const SizedBox(height: 6,), 
        const Text("We've sent your code to your phone number "), 
        const SizedBox(height: 10), 
        buildTimer()
        ],)),
      ),
    );
  }

  
  }
