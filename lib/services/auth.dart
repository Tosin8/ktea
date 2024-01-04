// initializing firebase auth

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import '../model/firebaseuser.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance; 

  FirebaseUser? _firebaseUser(User? user){
    return user != null ?  FirebaseUser(uid: user.uid, code: '') : null; 
  }

  Stream<FirebaseUser?> get user{
    return _auth.authStateChanges().map(_firebaseUser);
  }




// Creating Sign In Anonmymous method. 
Future signInAnonymous() async {
  try {
    UserCredential userCredential = await _auth.signInAnonmyously();
    User? user = userCredential.user; 
    return _firebaseUser(user); 
  }
  catch (e){
    return FirebaseUser(code: e.toString(), uid: null); 
  }
}
}