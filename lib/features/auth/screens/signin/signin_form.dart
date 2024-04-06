import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ktea/utils/nav_bar.dart';

import 'forget_psw_btn.dart';
import 'login_btn.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 25.0), 
      child: Form(
        child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress, 
            textInputAction: TextInputAction.next, 
            decoration: const InputDecoration(
                      suffixIcon: Padding(
                padding: EdgeInsets.only(right: 10), 
                child: Icon(Iconsax.sms),
                
              ), 
              labelText: 'Email',
            ),
          ), 
          const SizedBox(height: 10,), 

          // Password
          TextFormField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword, 
            textInputAction: TextInputAction.done, 
            decoration: const InputDecoration(
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 10), 
                child: Icon(Iconsax.eye),
                
              ), 
              labelText: 'Password',
            ),
          ), 
          const SizedBox(height: 50,), 

          // Button
          const LoginBtn(),
          const SizedBox(height: 15,), 
          //const fgtPassword(),
          TextButton(
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
  Container(
    padding: const EdgeInsets.all(20.0), 
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0), 
    color: Colors.grey.shade200),
    child: Row(
      children: [
        const Icon(Iconsax.sms, color: Colors.black,size: 30,),
        SizedBox(width: 20,), 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('E-Mail', style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 16),),
            Text('Reset via E-Mail Verification', style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 14),),
          ],
        )
      ],
    ),
  ), 
                ],
              ),
            )); 
          }, child: 
          Text('Forgot Password?', style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 14),)),
          
        ],
      )),
    );
  }
}

