import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../forgot_pass/forgot.dart';
import '../form_error.dart';
import '../widget.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
  
  
}

class _SignInFormState extends State<SignInForm> {
final formKey = GlobalKey<FormState>(); 

final List<String> errors = []; 

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

// void validateAndSubmit() async {
//   if(validateAndSave()){
//     try {
//     FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: _email, password: _pwd)) as FirebaseUser; 
//       print('Signed in: ${user.uid}'); 
//     }
//     catch (e) {
//       print('Error: $e'); 
//     }
//   }
// }

void validateAndSubmit() {
if (formKey.currentState!.validate()){
  formKey.currentState?.save(); 
}; 
}


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Form(
        key: formKey, 
       
          child: Column(
            children: [
              buildEmailFormField(
                label: 'Email', 
                hint: 'Enter a valid email',
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
      
              const SizedBox(height: 5), 
              buildPwdFormField(
                label: 'Password',
                hint: 'Enter your password',
                 validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null, 
                 onSaved: (value) => _pwd = value, 
                ), 
             const SizedBox(height: 10),  
            const checkBox(),
                const SizedBox(height: 30), 

                //FormError(errors: errors), 
                
               DefaultButton(textBtn: 'LOGIN',
                press: (){},
               ),
               SizedBox(height: 3,), 
               TextButton(
                onPressed: () => Get.to(() => ForgotPwd()) ,  child: Text('Forgot Password?', style: TextStyle(color: Colors.black),))
            ],
          ),
        
      ),
    );
  }
}
