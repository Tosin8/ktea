import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ktea/features/auth/controllers/signup_controller.dart';
import 'package:ktea/features/auth/screens/signup/sign_up_btn.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
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
SizedBox(height: 10,), 
// First Name
              TextFormField(
              keyboardType: TextInputType.name, 
              textInputAction: TextInputAction.next, 
              decoration: const InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Iconsax.user),
                  
                ), 
                labelText: 'First Name',
              ),
            ),
            SizedBox(height: 10,), 

            // Last Name
              TextFormField(
              keyboardType: TextInputType.name, 
              textInputAction: TextInputAction.next, 
              decoration: const InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Iconsax.user),
                  
                ), 
                labelText: 'Last Name',
              ),
            ),

            SizedBox(height: 10,), 

            // Password
              TextFormField(
              keyboardType: TextInputType.visiblePassword, 
              textInputAction: TextInputAction.next, 
              decoration: const InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Iconsax.eye),
                  
                ), 
                labelText: 'Password',
              ),
            ),

              SizedBox(height: 10,), 

            // Phone
              TextFormField(
              keyboardType: TextInputType.phone, 
              textInputAction: TextInputAction.done, 
              decoration: const InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Iconsax.mobile),
                  
                ), 
                labelText: 'Phone Number',
              ),
            ),
SizedBox(height:30 ,), 
            // Button
            SignUpBtn(), 
          ]
        )
      ),
    );
  }
}