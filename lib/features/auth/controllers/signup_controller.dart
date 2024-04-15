import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
static SignUpController get instance => Get.find();

/// Variables
final email = TextEditingController(); 
final firstName = TextEditingController();
final lastName = TextEditingController();
final phoneNumber = TextEditingController();
final userName = TextEditingController();
final password = TextEditingController();
GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // form key for form validation

/// Sign Up Methods

Future<void> signUp() async {
  try {

// Start Loading 

// Check Internet Connectivity 

// Form Validation 

// Privacy Policy Check

// Register User in the firebase Auth.

// save auth user data in the fire store

// show success message. 

// move to verify email screen. 


  } catch (e) {
    
  } finally {
    // Callback when the process is finished,
  }
}
}