import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ktea/screens/form/widget.dart';

import 'forgot_pass_widget.dart';

class ForgotPwdBody extends StatefulWidget {
  const ForgotPwdBody({super.key});

  @override
  State<ForgotPwdBody> createState() => _ForgotPwdBodyState();
}

class _ForgotPwdBodyState extends State<ForgotPwdBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      width: double.infinity, 
      child: SingleChildScrollView(child: FadeInRight(child: Column(children: [
        SizedBox(height: 8,), 
       Text('Reset your password',
                style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 24, fontWeight: FontWeight.bold),),
                const SizedBox(height: 6),  
                const Text('Type in your registered email\n to receive reset code',style: TextStyle(fontSize: 16), 
                textAlign: TextAlign.center,), 
                const SizedBox(height: 30), 
                const ForgotPwdForm(), 
                const SizedBox(height: 30), 
                DefaultButton(textBtn: 'Reset Password', press: (){})
      ],)),),
    );
  }
}