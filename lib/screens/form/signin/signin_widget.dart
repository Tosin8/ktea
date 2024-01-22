import 'package:flutter/material.dart';

import '../form_error.dart';
import '../widget.dart';

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
