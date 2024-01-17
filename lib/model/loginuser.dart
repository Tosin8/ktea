
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginUser {
  final String? email; 
  final String? password;

  LoginUser({required this.email, required this.password}); 
  
}

class UserModel {
  static const NAME = 'name'; 
  static const EMAIL = 'email'; 

  late String name, email; 

  UserModel({required this.name, required this.email}); 
  
  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    name = (snapshot.data() as Map<String, dynamic>)[NAME];
    //name = snapshot.data()![NAME]; 
    //email = snapshot.data()[EMAIL]; 
    name = (snapshot.data() as Map<String, dynamic>)[EMAIL];
  }
}
