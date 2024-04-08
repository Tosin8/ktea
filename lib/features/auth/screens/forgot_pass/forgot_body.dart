import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ktea/features/auth/screens/forgot_pass/send_link_btn.dart';



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
      child: SingleChildScrollView(
        child: FadeInRight(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    SizedBox(height: 15,), 
                   Text('Reset your password',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                     fontSize: 24, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 6),  
                  const Text('Type in your registered email\nto receive reset code',style: TextStyle(fontSize: 16), 
                  ), 
                  const SizedBox(height: 30), 
                  //const ForgotPwdForm(), 
                 Form(
                   child: TextFormField(
                               keyboardType: TextInputType.emailAddress, 
                               textInputAction: TextInputAction.done, 
                               decoration: const InputDecoration(
                        suffixIcon: Padding(
                                   padding: EdgeInsets.only(right: 10), 
                                   child: Icon(Iconsax.sms),
                                   
                                 ), 
                                 labelText: 'Email',
                               ),
                             ),
                 ),  
                  const SizedBox(height: 60), 
                  // Btn
                  SendLinkBtn(), 

                  
                  ],),
          )),),
    );
  }
}