// initializing firebase auth

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ktea/model/loginuser.dart';

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
    UserCredential userCredential = await _auth.signInAnonymously();
    User? user = userCredential.user; 
    return _firebaseUser(user); 
  }
  catch (e){
    return FirebaseUser(code: e.toString(), uid: null); 
  }
}
Future signInEmailPassword(LoginUser _login) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _login.email.toString(),
     password: _login.password.toString()); 
     User? user = userCredential.user; 
     return _firebaseUser(user); 
  } on FirebaseAuthException catch(e) {
    return FirebaseUser(uid: null, code: e.code);
  }
}

Future registerEmailPassword(LoginUser _login) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _login.email.toString(), password: _login.password.toString());
    User? user = userCredential.user; 
    return _firebaseUser(user);
  } on FirebaseAuthException catch (e) {
    return FirebaseUser(uid: null, code: e.code);
  } catch (e) {
    return FirebaseUser(uid: null, code: e.toString());
  }
}

Future signOut() async {
  try {
    return await _auth.signOut();
  }
  catch (e) {
    return null; 
  }
}
}