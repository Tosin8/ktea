class FirebaseAuthException implements Exception{


/// the error code associated with the exception. 
final String code; 

/// constructor that takes an error code. 
FirebaseAuthException(this.code);

/// Get the corresponding error message bsed on the error code.
String get message {
  switch (code) {
    case 'email-already-in-use':
    return 'The email address is already registered. Use a different email address.';
    case 'invalid-email':
    return 'The email address is not valid. Enter a valid email address.';
    case 'weak-password': 
    return 'The password is too weak. Enter a stronger password.';
    case 'user-not-found':
    return 'Invalid login details, User not found';
    case 'user-disabled':
    return 'This user account has been disabled. Please contact support for assistance'; 
    case 'wrong-password':
    return 'Incorrect password. kindly check and try again';
    case 'invalid-verification-code':
    return 'Invalid verification code. Enter a valid code';
    case 'invalid-verification-id':
    return 'Invalid verification id. Request a new verification code';
    case 'quota-exceeded':
    return 'Quota exceeded. Try again later';
    case 'provider-already-linked':
    return 'The account is already linked to another provider';
    case 'requires-recent-login':
    return 'This operation is sensitive and requires recent authentication. Please log in again';
    case 'credential-already-in-use':
    return 'The account corresponding to this credential already exists';
    case 'user-mismatch':
    return 'The provided credentials do not correspond to the previously signed in user';
    default:
    return 'An unknown error occurred';
    
  }
}

}