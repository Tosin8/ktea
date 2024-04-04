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
              decoration: InputDecoration(
                suffixIcon: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Iconsax.sms),
                )
              ),
            )
          ]
        )
      ),
    );
  }
}