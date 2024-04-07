import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ktea/features/auth/controllers/signup_controller.dart';
import 'package:ktea/features/auth/model/user_model.dart';
import 'package:ktea/features/auth/screens/forgot_pass/otp/otp.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();

    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Form( 
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
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
// Full Name
              TextFormField(
              keyboardType: TextInputType.name, 
              textInputAction: TextInputAction.next, 
              decoration: const InputDecoration(
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Iconsax.user),
                  
                ), 
                labelText: 'Full Name',
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
                  child: Icon(Iconsax.eye),
                  
                ), 
                labelText: 'Password',
              ),
            ),

              const SizedBox(height: 10,), 

            // Phone
              TextFormField(
                controller: controller.phone,
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
const SizedBox(height:50 ,), 
            // Button
           // const SignUpBtn(), 
           GestureDetector( 
      onTap: () {
        if(_formKey.currentState!.validate()) {
          // SignUpController.instance.registerUser(
          //   controller.email.text.trim(),
          // controller.password.text.trim()); 
          // SignUpController.instance.phoneAuthentication(
          //   controller.phone.text.trim()); 
          //   Get.to(()=> const OTP());
        final user = UserModel(
      
           fullName: controller.name.text.trim(), 
            email: controller.email.text.trim(), 
             phoneNo: controller.phone.text.trim(), password: controller.password.text.trim()
             );
             SignUpController.instance.createUser(user); 
             Get.to(() => const OTP());  
        
        }
       // Get.to(() => const SuccessScreen());
      },
      child: Container(width: 350, height: 50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), 
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