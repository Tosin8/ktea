import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
          SizedBox(height: 20), 
          Text('OTP Verification', style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 24, fontWeight: FontWeight.bold),
        ), 
        const SizedBox(height: 6,), 
        const Text("We've sent your code to your phone number "), 
        SizedBox(height: 10), 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This code will expire in '),
            TweenAnimationBuilder(
              tween: Tween(begin: 30.0, end: 0), 
               duration: Duration(seconds: 30), 
               builder: (context, value, child ) => Text('00:${value.toInt()}', 
               style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
               ))
          ],
        )
        ],)),
      ),
    );
  }
}