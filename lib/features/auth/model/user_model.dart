

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
 //final String? id; 
  final String fullName; 
  final String email;
  final String phoneNo; 
  final String password;

  UserModel({
   // required this.id, 
    required this.fullName, 
    required this.email, 
    required this.phoneNo, 
    required this.password
    }); 

    toJson() {
      return {
        'FullName': fullName, 
        'Email': email,
        'Phone': phoneNo, 
        'Passworod': password, 
      }; 
    }

    /// Map user fetched from firebase to usermodel
    factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
      final data = document.data()!; 
      return UserModel(
    
        fullName: data['FullName'],
         email: data['Email'], 
         phoneNo: data[
          'Phone'], 
          password: data['Phone'], 
          ); 
    }
}