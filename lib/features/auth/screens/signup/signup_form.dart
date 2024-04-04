import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
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

            // Password
              TextFormField(
              keyboardType: TextInputType.phone, 
              textInputAction: TextInputAction.next, 
              decoration: const InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Iconsax.mobile),
                  
                ), 
                labelText: 'Phone Number',
              ),
            ),

            // Button
            
          ]
        )
      ),
    );
  }
}