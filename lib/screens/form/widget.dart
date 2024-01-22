// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forgot_pass/forgot.dart';





class buildEmailFormField extends StatelessWidget {
  const buildEmailFormField({
    Key? key,
    required this.label,
    required this.hint, required String? Function(dynamic value) validator, required Function(dynamic value) onSaved,
  }) : super(key: key);

final String label; 
final String hint; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10), 
          child: Icon(Icons.mail_outline,)),
    
        labelText: label, 
        hintText: hint,
        
         hintStyle: TextStyle(color: Colors.grey[500]), 
        contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always, 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          gapPadding: 10, 
          borderSide: const BorderSide(color: Colors.orange),
        ), 
        focusedBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(28), 
          borderSide: const BorderSide(color: Colors.black), 
          gapPadding: 10, 
        )
      ),
    );
  }
}
// ignore: camel_case_types
class buildPwdFormField extends StatelessWidget {
   const buildPwdFormField({
    super.key, required this.label, required this.hint, required String? Function(dynamic value) validator, required Function(dynamic value) onSaved,
  });

final String label; 
final String hint; 


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done, 
      decoration: InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10), 
          child: Icon(Icons.key_rounded,)),
    
        labelText: label, 
        hintText: hint, hintStyle: TextStyle(color: Colors.grey[500]), 
        contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always, 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          gapPadding: 10, 
          borderSide: const BorderSide(color: Colors.orange),
        ), 
        focusedBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(28), 
          borderSide: const BorderSide(color: Colors.black), 
          gapPadding: 10, 
        )
      ),
    );
  }
}

// ignore: camel_case_types


class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.textBtn, required this.press});

final String textBtn; 
final GestureTapCallback press; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press, 
      child: Container(
        width: 350, height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.orange
        ),
        child: Align(
          child: Text(textBtn, 
          style: const TextStyle(color: Colors.white, fontSize: 20,
          fontWeight: FontWeight.w500),),
        ),
      ),
    );
  }
}

class checkBox extends StatelessWidget {
  const checkBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
         Checkbox(
           value: false,
            onChanged: (bool? value) {  },
         ), 
         const Text('Remember me'),
         const SizedBox(width: 100), 
         Expanded(child: GestureDetector(
           onTap: () {
             Get.to(const ForgotPwd());
           },
           child: const Text('Forgot Password',
           style: TextStyle(
             decoration: TextDecoration.underline
           ),)))
       ],
     );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(''); 
          },
          child: Container(
            height: 40, width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white10,
                         borderRadius: BorderRadius.circular(30),
                         boxShadow: [
                          BoxShadow(
                          color:Colors.grey.withOpacity(0.2),  
                          spreadRadius: 1,
                           ), 
                         ]),
                
                child: Image.asset('assets/icons/social/fb-logo.png')),
        ),
          
         GestureDetector(
          onTap: () {
            Get.to(''); 
          },
          child: Container(
            height: 40, width: 40,
            decoration: BoxDecoration( color: Colors.white10,
                         borderRadius: BorderRadius.circular(30),
                         boxShadow: [
                          BoxShadow(
                          color:Colors.grey.withOpacity(0.2),  
                          spreadRadius: 1,
                           ), 
                         ]),
                        
                
                child: Image.asset('assets/icons/social/google-logo.png')),
        ),
          
      GestureDetector(
          onTap: () {
            Get.to(''); 
          },
          child: Container(
            height: 40, width: 40,
                        decoration: BoxDecoration( color: Colors.white10,
                         borderRadius: BorderRadius.circular(30),
                         boxShadow: [
                          BoxShadow(
                          color:Colors.grey.withOpacity(0.2),  
                          spreadRadius: 1,
                           ), 
                         ]),
                
                child: Image.asset('assets/icons/social/apple-logo.png')),
        ),
          
     
      ],
    );
  }
}


// class createAccount extends StatelessWidget {
//   const createAccount({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector( 
//       onTap: moveToRegister(),
//       child: const Text('Create Account', 
//       style: TextStyle(
//         fontSize: 18,
//         color: Colors.orange,
//         fontWeight: FontWeight.w600,
//         decoration: TextDecoration.underline,), 
//        ),
//     );
//   }
  
 
// }

enum FormType {
    login, 
    register
  }


  class buildUserFirstFormField extends StatelessWidget {
  const buildUserFirstFormField({
    Key? key,
    required this.label,
    required this.hint, required String? Function(dynamic value) validator, required Function(dynamic value) onSaved,
  }) : super(key: key);

final String label; 
final String hint; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10), 
          child: Icon(Icons.person_2_outlined,)),
    
        labelText: label, 
        hintText: hint,
        
         hintStyle: TextStyle(color: Colors.grey[500]), 
        contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always, 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          gapPadding: 10, 
          borderSide: const BorderSide(color: Colors.orange),
        ), 
        focusedBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(28), 
          borderSide: const BorderSide(color: Colors.black), 
          gapPadding: 10, 
        )
      ),
    );
  }
}

class buildUserLastFormField extends StatelessWidget {
  const buildUserLastFormField({
    Key? key,
    required this.label,
    required this.hint, required String? Function(dynamic value) validator, required Function(dynamic value) onSaved,
  }) : super(key: key);

final String label; 
final String hint; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10), 
          child: Icon(Icons.person_2_outlined,)),
    
        labelText: label, 
        hintText: hint,
        
         hintStyle: TextStyle(color: Colors.grey[500]), 
        contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always, 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          gapPadding: 10, 
          borderSide: const BorderSide(color: Colors.orange),
        ), 
        focusedBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(28), 
          borderSide: const BorderSide(color: Colors.black), 
          gapPadding: 10, 
        )
      ),
    );
  }
}

class buildUserPhoneFormField extends StatelessWidget {
  const buildUserPhoneFormField({
    Key? key,
    required this.label,
    required this.hint, required String? Function(dynamic value) validator, required Function(dynamic value) onSaved,
  }) : super(key: key);

final String label; 
final String hint; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10), 
          child: Icon(Icons.phone_android_outlined,)),
    
        labelText: label, 
        hintText: hint,
        
         hintStyle: TextStyle(color: Colors.grey[500]), 
        contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always, 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          gapPadding: 10, 
          borderSide: const BorderSide(color: Colors.orange),
        ), 
        focusedBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(28), 
          borderSide: const BorderSide(color: Colors.black), 
          gapPadding: 10, 
        )
      ),
    );
  }
}

class buildUserAddressFormField extends StatelessWidget {
  const buildUserAddressFormField({
    Key? key,
    required this.label,
    required this.hint, required String? Function(dynamic value) validator, required Function(dynamic value) onSaved,
  }) : super(key: key);

final String label; 
final String hint; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10), 
          child: Icon(Icons.location_on_outlined,)),
    
        labelText: label, 
        hintText: hint,
        
         hintStyle: TextStyle(color: Colors.grey[500]), 
        contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always, 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          gapPadding: 10, 
          borderSide: const BorderSide(color: Colors.orange),
        ), 
        focusedBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(28), 
          borderSide: const BorderSide(color: Colors.black), 
          gapPadding: 10, 
        )
      ),
    );
  }
}


class buildResetPwdFormField extends StatelessWidget {
   const buildResetPwdFormField({
    super.key, required this.label, required this.hint, required String? Function(dynamic value) validator, required Function(dynamic value) onSaved,
  });

final String label; 
final String hint; 


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done, 
      decoration: InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10), 
          child: Icon(Icons.key_rounded,)),
    
        labelText: label, 
        hintText: hint, hintStyle: TextStyle(color: Colors.grey[500]), 
        contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always, 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          gapPadding: 10, 
          borderSide: const BorderSide(color: Colors.orange),
        ), 
        focusedBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(28), 
          borderSide: const BorderSide(color: Colors.black), 
          gapPadding: 10, 
        )
      ),
    );
  }
}