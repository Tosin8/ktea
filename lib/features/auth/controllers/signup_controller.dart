import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  // Text field controllers
final  email = TextEditingController(); 
final firstname = TextEditingController(); 
final lastname = TextEditingController();

  final password = TextEditingController(); 
  final phone = TextEditingController();


// Function call when user click on signup button
void registerUser(String email, String password) {}

  }