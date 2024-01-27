import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/screens/form/signin/signin.dart';
import 'package:ktea/screens/profile/profile.dart';

class UserController extends GetxController {
  static UserController instance = Get.find(); 
  Rx<User> firebaseUser; 
  RxBool isLoggedIn = false.obs; 
  TextEditingController name = TextEditingController(); 
  TextEditingController email = TextEditingController(); 
  TextEditingController password = TextEditingController(); 
  String usersCollection = 'users'; 
  Rx<UserModel> userModel = UserModel().obs; 

  @override 
  void onReady() {
    super.onReady(); 
    firebaseUser = Rx<User>(auth.currentUser); 
    firebaseUser.bindStream(auth.userChanges()); 
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User user) {
    if(user == null) {
      Get.offAll(() => SignIn());
    } else {
      userModel.bindStream(listenToUser()); 
      Get.offAll(() => Profile()); 
    }
  }

  void signIn() async {
    try {
      showLoading();
      await auth
          .signInWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim())
          .then((result) {
        _clearControllers();
      });
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar("Sign In Failed", "Try again");
    }
  }

  void signUp() async {
    showLoading();
    try {
      await auth
          .createUserWithEmailAndPassword(
              email: email.text.trim(), password: password.text.trim())
          .then((result) {
        String _userId = result.user.uid;
        _addUserToFirestore(_userId);
        _clearControllers();
      });
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar("Sign In Failed", "Try again");
    }
  }

  void signOut() async {
    auth.signOut();
  }

  _addUserToFirestore(String userId) {
    firebaseFirestore.collection(usersCollection).doc(userId).set({
      "name": name.text.trim(),
      "id": userId,
      "email": email.text.trim(),
      "cart": []
    });
  }

 

  _clearControllers() {
    name.clear();
    email.clear();
    password.clear();
  }

  updateUserData(Map<String, dynamic> data) {
    logger.i("UPDATED");
    firebaseFirestore
        .collection(usersCollection)
        .doc(firebaseUser.value.uid)
        .update(data);
  }

  Stream<UserModel> listenToUser() => firebaseFirestore
      .collection(usersCollection)
      .doc(firebaseUser.value.uid)
      .snapshots()
      .map((snapshot) => UserModel.fromSnapshot(snapshot));
}

