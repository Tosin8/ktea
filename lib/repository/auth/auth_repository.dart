
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ktea/features/auth/screens/onboarding/splash.dart';
import 'package:ktea/repository/exceptions/signup_email_pwd_failure.dart';
import 'package:ktea/utils/nav_bar.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
 late final Rx<User?> firebaseUser; 
 var verificationId = ''.obs; 

  @override 
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser); 
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen); 
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const Onboarding()): Get.offAll(() => const NavBarApp());  
  }

// Func for Phone Number
void phoneAuthentication(String phoneNo) async {
  await _auth.verifyPhoneNumber (
    phoneNumber: phoneNo,
    verificationCompleted: (credential)  async{
      await _auth.signInWithCredential(credential); 
    },
    codeSent:(verificationId, resendToken) {
      this.verificationId.value = verificationId; 
    },
    codeAutoRetrievalTimeout: (verificationId){}, 
    verificationFailed: (e) {
      if(e.code == 'invalid-phone-number') {
        Get.snackbar('Error', 
        'The provided phone number is not valid'); 
    } else{
      Get.snackbar('Error', 'Something went wrong, try again');
    }

    }
  ); 
}

Future<bool> verifyOTP(String otp) async {
  var credentials = await _auth.signInWithCredential(
    PhoneAuthProvider.credential(
      verificationId: this.verificationId.value, 
      smsCode: otp)); 
      return credentials.user != null ? true: false; 
}


  Future<void> createUserWithEmailAndPassword(String email, String password) async {

    try{
   await _auth.createUserWithEmailAndPassword(email: email, password: password); 
   firebaseUser.value != null ? Get.offAll(() => const NavBarApp()): Get.offAll(() => const Onboarding());
  } on FirebaseAuthException catch (e) {
    final ex = SignUpWithEmailAndPasswordFailure.code(e.code); 
    print('FIREBASE AUTH EXCEPTION - ${ex.message}');
    throw ex; 
  } catch (_){
  final ex = SignUpWithEmailAndPasswordFailure(); 
    print('EXCEPTION - ${ex.message}');
    throw ex;
  }
}


Future<void> loginWithEmailAndPassword(String email, String password) async {

    try{
   await _auth.signInWithEmailAndPassword(email: email, password: password); 
  } on FirebaseAuthException catch(e){
    
  } catch (_){}
}

  Future<void> logOut() async => await _auth.signOut();
}