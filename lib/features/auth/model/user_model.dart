class UserModel {
  final String? id; 
  final String fullName; 
  final String email;
  final String phoneNo; 
  final String password;

  UserModel({
    required this.id, 
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
}