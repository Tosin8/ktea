// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class UserController extends GetxController {
//   static UserController instance = Get.find(); 
//   Rx<User> firebaseUser; 
//   RxBool isLoggedIn = false.obs; 
//   TextEditingController name = TextEditingController(); 
//   TextEditingController email = TextEditingController(); 
//   TextEditingController password = TextEditingController(); 
//   String usersCollection = 'users'; 
//   Rx<UserModel> userModel = UserModel().obs; 

//   @override 
//   void onReady() {
//     super.onReady(); 
//     firebaseUser = Rx<User>(auth.currentUser); 
//     firebaseUser.bindStream(auth.userChanges()); 
//     ever(firebaseUser, _setInitialScreen);
//   }

//   _setInitialScreen(User user) {
//     if(user == null) {
//       Get.offAll(page);
//     }
//   }
// }


