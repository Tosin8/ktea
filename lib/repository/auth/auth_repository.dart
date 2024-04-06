
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ktea/features/auth/screens/onboarding/splash.dart';
import 'package:ktea/utils/nav_bar.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
 late final Rx<User?> firebaseUser; 

  @override 
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser); 
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen); 
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const Onboarding()): Get.offAll(() => const NavBarApp());  
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {

    try{
   await _auth.createUserWithEmailAndPassword(email: email, password: password); 
  } on FirebaseAuthException catch (e) {
    
  } catch (_){}
}


Future<void> loginWithEmailAndPassword(String email, String password) async {

    try{
   await _auth.signInWithEmailAndPassword(email: email, password: password); 
  } on FirebaseAuthException catch(e){
    
  } catch (_){}
}

  Future<void> logOut() async => await _auth.signOut();
}