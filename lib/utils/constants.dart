import 'package:flutter/material.dart';

var kPrimaryColor = Color(0xfffff400);
var kSecondaryColor = Color(0xff1e83ff);
var kProductColor = Color(0xfff3f6f8);


// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

// Images
String successImage = "assets/animation/Animation - 1712269756160.json"; 