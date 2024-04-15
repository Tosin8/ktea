class FirebaseException implements Exception{
  final String code; 

  /// constructor that takes an error code. 
   FirebaseException(this.code);

   /// Get the corresponing error message base on the error code
   
   String get message{
    switch (code) {
      case 'unknown': 
        return 'An unknown error has occured, Please try again';
      case 'invalid-custom-token':
      return 'The custom token format is incorrect. Please check your custom token';
      case 'custom-token-mismatch':
      return 'The custom token corresponds to a different audience';
      case 'invalid-email':
      return 'The email address is already registered. Please use a different email address';
      case 'user-disabled':
      return 'The user account has been disabled by an administrator';
      case 'user-not-found':
      return 'There is no user corresponding to this identifier. The user may have been deleted';
      case 'wrong-password':
      return 'The password is invalid or the user does not have a password';
      case 'email-already-in-use':
      return 'The email address is already in use by another account';
      case 'operation-not-allowed':
      return 'This operation is not alloweed, kindly contact support for assistance';
      case 'weak-password':
      return 'The password must be 6 characters long or more';
      case 'invalid-verification-code':
      return 'The verification code is invalid';
      case 'invalid-verification-id':
      return 'The verification ID is invalid';
      case 'captcha-checked-failed':
      return 'Captcha check failed. Please try again';

      case 'network-request-failed':
      return 'The app is not authorized with the provided API'; 

      case 'too-many-requests':
      return 'Too many requests. Please try again later';

      case 'internal-error':
      return 'An internal error has occured, Please try again';

      case 'invalid-credential':
      return 'The provided credential is invalid';

      case 'user-mismatch':
      return 'The provided credentials do not correspond to the previously signed in user';

      case 'credential-already-in-use':
      return 'The credential is already in use by another user';

      case 'requires-recent-login':
      return 'This operation is sensitive and requires recent authentication. Log in again before retrying this request.';

      case 'account-exists-with-different-credential':
      return 'An account already exists with the same email address but different sign-in credentials. Sign in using a provider associated with this email address.';

     

      case 'provider-already-linked':
      return 'The provider has already been linked to a user with the given email address';

      case 'no-such-provider':
      return 'User does not exist';


      default:
        return 'An unknown error has occured, Please try again';

    }
   }
}