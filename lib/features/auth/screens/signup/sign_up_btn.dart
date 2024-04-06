import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/features/auth/controllers/signup_controller.dart';
import 'package:ktea/features/auth/screens/success_screen.dart';

class SignUpBtn extends StatelessWidget {
  const SignUpBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return GestureDetector( 
      onTap: () {
        if(_formKey.currentState!.validate()) {
          SignUpController.instance.registerUser(
            controller.email.text.trim(),
          controller.password.text.trim()); 
        }
        Get.to(() => const SuccessScreen());
      },
      child: Container(width: 350, height: 50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.orange), 
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
    );
  }
}