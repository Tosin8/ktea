import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

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

           // Remember Me - Check box
           const SizedBox(height: 10,), 
           Padding(
            padding: const EdgeInsets.only(left: 0),
             child: Row(
              children: [
             Checkbox(value: true, 
             onChanged: (value){}), 
             const Text('Remember Me'), 
              ],
             ),
           ) , 
          const SizedBox(height: 50,), 

         


          // Button
          const LoginBtn(),
          const SizedBox(height: 15,), 
          const fgtPassword(),
          
          
        ],
      )),
    );
  }
}

