import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/utils/loaders/full_screen_loader.dart';
import 'package:ktea/utils/http/network_manager.dart';
import 'package:ktea/utils/loaders/loaders.dart';

class SignUpController extends GetxController{
static SignUpController get instance => Get.find();

/// Variables
final hidePassword = true.obs;  // obs for hiding /showing passwords. 
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
FullScreenLoader.openLoadingDialog('We are processing your informaion...', 
'assets/animation/json/loading_processing.json' );

// Check Internet Connectivity 
final isConnected = await NetworkManager.instance.isConnected(); 
if(!isConnected){
  return; 
}

// Form Validation 
if(!signupFormKey.currentState!.validate()) {
  
  return; 
}

// Privacy Policy Check

// Register User in the firebase Auth.

// save auth user data in the fire store

// show success message. 

// move to verify email screen. 


  } catch (e) {
    

    // Callback when the process is finished,
    Loaders.errorSnackBar(title: 'Oh Snap', message: e.toString()); 
  } finally {
    // Remove loader 
    FullScreenLoader.stopLoading(); 
  }
}
}