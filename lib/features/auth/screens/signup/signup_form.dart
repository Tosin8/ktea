import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ktea/features/auth/controllers/signup_controller.dart';
import 'package:ktea/features/auth/screens/verify_pass/verify_pass.dart';
import 'package:ktea/utils/validators/validation.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController()); // creating dependency. 
  //final _formKey = GlobalKey<FormState>();

    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Form( 
      //  key: _formKey,
      key: controller.signupFormKey, 
        child: Column(
          children: [
            TextFormField(
              validator: (value) => Validators.validateEmail( value),
              controller: controller.email, 
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

// first name & last name

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (value) => Validators.validateEmptyText('First Name', value),
                      controller: controller.firstName,
                      expands: false,
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
                  ),
                  const SizedBox(width: 10,), 
                   Expanded(
                    child: TextFormField(
                      validator: (value) => Validators.validateEmptyText('Last Name', value),
                      controller: controller.lastName, 
                      expands: false,
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
                  ),
                ],
              ),
            const SizedBox(height: 10,), 

// Username
      TextFormField(
              validator: (value) => Validators.validateEmptyText('Username', value),
                controller: controller.userName, 
              keyboardType: TextInputType.visiblePassword, 
              textInputAction: TextInputAction.next, 
              decoration: const InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Iconsax.user),
                  
                ), 
                labelText: 'Username',
              ),
            ),

              const SizedBox(height: 10,), 

            // Password
              TextFormField(
                obscureText: true, 
                controller: controller.password, 
              keyboardType: TextInputType.visiblePassword, 
              textInputAction: TextInputAction.next, 
              decoration: const InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Iconsax.eye_slash),
                  
                ), 
                labelText: 'Password',
              ),
            ),

              const SizedBox(height: 10,), 

            // Phone
              TextFormField(
                controller: controller.phoneNumber,
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

const SizedBox(height: 10,), 
             // CheckBox
              Row(
                children: [
                  SizedBox(
                    width: 25,
                    child: Checkbox(value: true, 
                    onChanged: (value){}),
                  ), 
                  const SizedBox(width: 10,), 
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'I agree to the '),
                        TextSpan(text: 'Terms and Conditions', 
                        style: TextStyle(
                          color: Colors.orangeAccent, 
                          )),
                         
                      ]))
                ],
              ), 
const SizedBox(height:30 ,), 
            // Button
          
          
          
           // const SignUpBtn(), 
           GestureDetector( 
      onTap: () {
        Get.to(() => const VerifyEmail());
      }, 
      child: Container(
        width: 350, 
        height: 50,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), 
      color: Colors.orange), 
      child: const Align(
        child: Text(
        'SIGN UP', 
        style: TextStyle(
          color: Colors.white, 
          fontSize: 16, 
          fontWeight: FontWeight.w500)
          ),
          ),
          ),
    )
          ]
        )
      ),
    );
  }
}