// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktea/model/firebaseuser.dart';

class AppForm extends StatefulWidget {
  const AppForm({super.key});

  @override
  State<AppForm> createState() => _AppFormState();
  
  
}

class _AppFormState extends State<AppForm> {
final formKey = GlobalKey<FormState>(); 

final List<String> errors = ['Demo Error']; 

  late String _email; 
  late String _pwd;

  FormType _formType = FormType.login; 
  

  bool validateAndSave() {
   final form = formKey.currentState; 
   if(form!.validate()) {
    form.save();
    return true; 
   } else {
    return false;
   }
  }


 moveToRegister() {
    setState((){
      _formType = FormType.register; 
    });
  }

void validateAndSubmit() async {
  if(validateAndSave()){
    try {
    FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _email, password: _pwd)) as FirebaseUser; 
      print('Signed in: ${user.uid}'); 
    }
    catch (e) {
      print('Error: $e'); 
    }
  }
}


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey, 
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            buildEmailFormField(
              label: 'Email', 
              hint: 'Enter your email',
              validator: (value) {
                if (value.isEmpty) {
                  setState(() {
                    errors.add('Email can\'t be empty');
                  });
                }
                return null; 
              },
              
              /*(value) => value.isEmpty ? 'Email can\'t be empty' : null, */ 
              onSaved: (value) => _email = value, 
              
            ), 

            SizedBox(height: 30), 
            buildPwdFormField(
              label: 'Password',
              hint: 'Enter your password',
               validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null, 
               onSaved: (value) => _pwd = value, 
              ), 
           const SizedBox(height: 10),  
          checkBox(),
              const SizedBox(height: 30), 
              FormError(errors: errors), 
              SizedBox(height: 10), 
             DefaultButton(textBtn: 'Continue',
              press: validateAndSubmit,
             ),
          ],
        ),
      ),
    );
  }
}

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors[index]))
    );
  }

  Row formErrorText({required String error}) {
    return Row(
        children: [
          Container(
            width: 20, height: 20,
            child: Image.asset('assets/icons/error.png')), 
          SizedBox(width: 10,), 
          Text(error), 
        ],
      );
  }
}

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(''); 
          },
          child: Container(
            height: 80, width: 80,
                        
                
                child: Image.asset('assets/icons/social/fb-logo.png')),
        ),
          
         GestureDetector(
          onTap: () {
            Get.to(''); 
          },
          child: Container(
            height: 80, width: 80,
                        
                
                child: Image.asset('assets/icons/social/google-logo.png')),
        ),
          
      GestureDetector(
          onTap: () {
            Get.to(''); 
          },
          child: Container(
            height: 80, width: 80,
                        
                
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