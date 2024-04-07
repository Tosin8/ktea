import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ktea/repository/auth/auth_repository.dart';
import 'package:ktea/repository/user/user_repository.dart';

import '../model/user_model.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  // Text field controllers
final  email = TextEditingController(); 
final name = TextEditingController(); 
  final password = TextEditingController(); 
  final phone = TextEditingController();

  final userRepo = Get.put(UserRepository()); 


// Function call when user click on signup button
void registerUser(String email, String password) {
  String? error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String?; 
  if(error != null) {
    Get.showSnackbar(GetSnackBar(message: error.toString())); 
  }
   
}

// Get phoneNo from user and pass it to Auth Repo for Firebase Auth. 
// Auth Repo will call firebase auth and send OTP to user.

void createUser(UserModel user) {
  userRepo.createUser(user); 
  }

  

void phoneAuthentication(String phoneNo) {
  AuthenticationRepository.instance.phoneAuthentication(phoneNo);}

  }

